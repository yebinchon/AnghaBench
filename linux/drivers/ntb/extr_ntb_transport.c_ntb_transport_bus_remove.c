
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_client {int (* remove ) (struct device*) ;} ;
struct device {int driver; } ;


 struct ntb_transport_client* drv_client (int ) ;
 int put_device (struct device*) ;
 int stub1 (struct device*) ;

__attribute__((used)) static int ntb_transport_bus_remove(struct device *dev)
{
 const struct ntb_transport_client *client;

 client = drv_client(dev->driver);
 client->remove(dev);

 put_device(dev);

 return 0;
}
