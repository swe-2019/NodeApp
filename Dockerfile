from node:8
# create app dir
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json 
# AND package-lock.json are copied
COPY package*.json ./

RUN npm ci
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
EXPOSE 3000

CMD [ "npm", "start" ]