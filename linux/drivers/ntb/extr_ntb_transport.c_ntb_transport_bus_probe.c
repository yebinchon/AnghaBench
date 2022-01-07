
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_client {int (* probe ) (struct device*) ;} ;
struct device {int driver; } ;


 struct ntb_transport_client* drv_client (int ) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int stub1 (struct device*) ;

__attribute__((used)) static int ntb_transport_bus_probe(struct device *dev)
{
 const struct ntb_transport_client *client;
 int rc;

 get_device(dev);

 client = drv_client(dev->driver);
 rc = client->probe(dev);
 if (rc)
  put_device(dev);

 return rc;
}
