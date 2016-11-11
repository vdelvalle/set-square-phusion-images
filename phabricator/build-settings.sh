defineEnvVar PARENT_IMAGE_TAG "The version of the parent image" "latest";
defineEnvVar PHABRICATOR_VIRTUAL_HOST "The virtual host of the Phabricator installation" "phabricator.${DOMAIN}";
defineEnvVar PHABRICATOR_PORT "The port used by Phabricator" "8000";
defineEnvVar PHABRICATOR_DB_NAME "The database name" "phabricator";
defineEnvVar PHABRICATOR_DB_USER "The database user" "phabricator";
defineEnvVar PHABRICATOR_DB_PASSWORD "The database password" '${RANDOM_PASSWORD}';
defineEnvVar PHABRICATOR_FROM_ADDRESS "The from email address" 'noreply@${DOMAIN}';
defineEnvVar LIQUIBASE_VERSION "The version of Liquibase" "3.4.1";
defineEnvVar LIQUIBASE_ARTIFACT "The name of the Liquibase artifact" 'liquibase-${LIQUIBASE_VERSION}-bin.tar.gz';
defineEnvVar LIQUIBASE_URL "The url of the Liquibase artifact" 'https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${LIQUIBASE_VERSION}/${LIQUIBASE_ARTIFACT}';
defineEnvVar MARIADB_VERSION "The MariaDB version" "10.0.27-0ubuntu0.16.04.1";
defineEnvVar MARIADB_JDBC_DRIVER_VERSION "The version of the JDBC driver for MariaDB" "1.2.3";
defineEnvVar MARIADB_JDBC_DRIVER_ARTIFACT "The name of the MariaDB JDBC driver artifact" 'mariadb-java-client-${MARIADB_JDBC_DRIVER_VERSION}.jar';
defineEnvVar MARIADB_JDBC_DRIVER_URL "The url of the MariaDB JDBC driver artifact" 'http://central.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/${MARIADB_JDBC_DRIVER_VERSION}/${MARIADB_JDBC_DRIVER_ARTIFACT}';
defineEnvVar MARIADB_JDBC_DRIVER "The class name of the JDBC driver for MariaDB" "org.mariadb.jdbc.Driver";
defineEnvVar MYSQL_VERSION "The MariaDB version" "5.7.16-0ubuntu0.16.04.1";
defineEnvVar MYSQL_JDBC_DRIVER_VERSION "The version of the JDBC driver for MySQL" "6.0.5";
defineEnvVar MYSQL_JDBC_DRIVER_ARTIFACT "The name of the MySQL JDBC driver artifact" 'mysql-connector-java-${MYSQL_JDBC_DRIVER_VERSION}.jar';
defineEnvVar MYSQL_JDBC_DRIVER_URL "The url of the MySQL JDBC driver artifact" 'http://central.maven.org/maven2/mysql/mysql-connector-java/${MYSQL_JDBC_DRIVER_VERSION}/${MYSQL_JDBC_DRIVER_ARTIFACT}';
defineEnvVar MYSQL_JDBC_DRIVER "The class name of the JDBC driver for MySQL" "com.mysql.cj.jdbc.Driver";
defineEnvVar DEFAULT_TIMEZONE "The default timezone. See http://php.net/manual/en/timezones.php" "Europe/Madrid";
defineEnvVar BACKUP_HOST_SSH_PORT \
             "The SSH port of the backup host" \
             "$(grep -e phabricator sshports.txt || echo phabricator 22 | awk '{print $2;}')";
defineEnvVar INVALID_PATCHES \
             "Patches that are invalid for some reason" \
             "resources/sql/autopatches/20161026.calendar.01.importtriggers.sql";
