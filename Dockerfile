FROM openjdk:8-jre-alpine

MAINTAINER xingjiduong <xing.jiudong@trans-cosmos.com.cn>

ENV CONFD_VERSION 0.11.0

# install confd
RUN set -x && apk add --update --no-cache wget
RUN wget https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 --no-check-certificate \
    && chmod +x confd-${CONFD_VERSION}-linux-amd64 \
    && mv confd-${CONFD_VERSION}-linux-amd64 /usr/local/bin/confd
