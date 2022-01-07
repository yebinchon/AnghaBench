
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_connection {int dummy; } ;


 int gb_connection_disable (struct gb_connection*) ;
 int gb_spilib_master_exit (struct gb_connection*) ;

__attribute__((used)) static void gb_fw_spi_connection_exit(struct gb_connection *connection)
{
 if (!connection)
  return;

 gb_spilib_master_exit(connection);
 gb_connection_disable(connection);
}
