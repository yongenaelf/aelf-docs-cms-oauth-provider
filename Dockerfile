FROM cgr.dev/chainguard/node
ENV NODE_ENV=production

WORKDIR /app

COPY --chown=node:node ["package.json", "package-lock.json", "index.js", "./"]

RUN npm install --omit-dev

ENV PORT=8080

CMD [ "index.js" ]