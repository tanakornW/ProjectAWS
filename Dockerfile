FROM microsoft/aspnetcore:2.0 AS base
RUN ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata
RUN mkdir -p app
WORKDIR /app
COPY /api /app
ENV ASPNETCORE_URLS=http://+:59618
EXPOSE 59618