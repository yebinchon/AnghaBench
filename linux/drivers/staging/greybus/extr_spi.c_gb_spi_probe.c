
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gbphy_device_id {int dummy; } ;
struct gbphy_device {int dev; TYPE_1__* cport_desc; int bundle; } ;
struct gb_connection {int dummy; } ;
struct TYPE_2__ {int id; } ;


 scalar_t__ IS_ERR (struct gb_connection*) ;
 int PTR_ERR (struct gb_connection*) ;
 struct gb_connection* gb_connection_create (int ,int ,int *) ;
 int gb_connection_destroy (struct gb_connection*) ;
 int gb_connection_disable (struct gb_connection*) ;
 int gb_connection_enable (struct gb_connection*) ;
 int gb_gbphy_set_data (struct gbphy_device*,struct gb_connection*) ;
 int gb_spilib_master_init (struct gb_connection*,int *,int ) ;
 int gbphy_runtime_put_autosuspend (struct gbphy_device*) ;
 int le16_to_cpu (int ) ;
 int spilib_ops ;

__attribute__((used)) static int gb_spi_probe(struct gbphy_device *gbphy_dev,
   const struct gbphy_device_id *id)
{
 struct gb_connection *connection;
 int ret;

 connection = gb_connection_create(gbphy_dev->bundle,
       le16_to_cpu(gbphy_dev->cport_desc->id),
       ((void*)0));
 if (IS_ERR(connection))
  return PTR_ERR(connection);

 ret = gb_connection_enable(connection);
 if (ret)
  goto exit_connection_destroy;

 ret = gb_spilib_master_init(connection, &gbphy_dev->dev, spilib_ops);
 if (ret)
  goto exit_connection_disable;

 gb_gbphy_set_data(gbphy_dev, connection);

 gbphy_runtime_put_autosuspend(gbphy_dev);
 return 0;

exit_connection_disable:
 gb_connection_disable(connection);
exit_connection_destroy:
 gb_connection_destroy(connection);

 return ret;
}
