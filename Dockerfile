FROM zimmobe/php:7.0-apache-oraclelinux

RUN git clone https://github.com/perftools/xhgui.git . \
    && php install.php

COPY vhost.conf /etc/httpd/conf.d/project.conf
