
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int (* remove ) (struct ntb_client*,struct ntb_dev*) ;} ;
struct ntb_client {TYPE_1__ ops; } ;
struct device {scalar_t__ driver; } ;


 struct ntb_dev* dev_ntb (struct device*) ;
 struct ntb_client* drv_ntb_client (scalar_t__) ;
 int put_device (struct device*) ;
 int stub1 (struct ntb_client*,struct ntb_dev*) ;

__attribute__((used)) static int ntb_remove(struct device *dev)
{
 struct ntb_dev *ntb;
 struct ntb_client *client;

 if (dev->driver) {
  ntb = dev_ntb(dev);
  client = drv_ntb_client(dev->driver);

  client->ops.remove(client, ntb);
  put_device(dev);
 }

 return 0;
}
