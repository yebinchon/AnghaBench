
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int dummy; } ;
struct gb_connection {int dummy; } ;


 struct spi_master* gb_connection_get_data (struct gb_connection*) ;
 int spi_unregister_master (struct spi_master*) ;

void gb_spilib_master_exit(struct gb_connection *connection)
{
 struct spi_master *master = gb_connection_get_data(connection);

 spi_unregister_master(master);
}
