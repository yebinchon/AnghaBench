
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_connection {TYPE_1__* bundle; } ;
struct TYPE_2__ {int dev; } ;


 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_spilib_master_init (struct gb_connection*,int *,int ) ;
 int spilib_ops ;

__attribute__((used)) static int gb_fw_spi_connection_init(struct gb_connection *connection)
{
 int ret;

 if (!connection)
  return 0;

 ret = gb_connection_enable(connection);
 if (ret)
  return ret;

 ret = gb_spilib_master_init(connection, &connection->bundle->dev,
        spilib_ops);
 if (ret) {
  gb_connection_disable(connection);
  return ret;
 }

 return 0;
}
