
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gbphy_device {int dummy; } ;
struct gb_connection {int dummy; } ;


 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 struct gb_connection* gb_gbphy_get_data (struct gbphy_device*) ;
 int gb_spilib_master_exit (struct gb_connection*) ;
 int gbphy_runtime_get_noresume (struct gbphy_device*) ;
 int gbphy_runtime_get_sync (struct gbphy_device*) ;

__attribute__((used)) static void gb_spi_remove(struct gbphy_device *gbphy_dev)
{
 struct gb_connection *connection = gb_gbphy_get_data(gbphy_dev);
 int ret;

 ret = gbphy_runtime_get_sync(gbphy_dev);
 if (ret)
  gbphy_runtime_get_noresume(gbphy_dev);

 gb_spilib_master_exit(connection);
 gb_connection_disable(connection);
 gb_connection_destroy(connection);
}
