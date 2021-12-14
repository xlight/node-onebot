FROM node:14-alpine
RUN npm config set registry https://repo.huaweicloud.com/repository/npm/ && \
  npm config set disturl https://repo.huaweicloud.com/nodejs && \
  npm config set sass_binary_site https://repo.huaweicloud.com/node-sass 
WORKDIR /app
COPY . .
RUN npm up --no-save
ENV QQACCOUNT 3449308644
ENV ws_reverse_url []
ENV platform 5
CMD echo -ne '\n' | node main $QQACCOUNT
VOLUME /app/data
#CMD ["node", "main","3449308644"]
