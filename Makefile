mysql-setup:
	sudo cp 50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
	sudo systemctl restart mariadb

sql-init:
	sudo cp sql/0_Schema.sql /home/isucon/webapp/sql/0_Schema.sql

SLOW_LOG=/var/log/mysql/mariadb-slow.log

slow-query-show:
	sudo mysqldumpslow -s t $(SLOW_LOG) | head -n 20
