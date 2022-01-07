
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int (* probe ) (struct ntb_client*,struct ntb_dev*) ;} ;
struct ntb_client {TYPE_1__ ops; } ;
struct device {int driver; } ;


 struct ntb_dev* dev_ntb (struct device*) ;
 struct ntb_client* drv_ntb_client (int ) ;
 int get_device (struct device*) ;
 int put_device (struct device*) ;
 int stub1 (struct ntb_client*,struct ntb_dev*) ;

__attribute__((used)) static int ntb_probe(struct device *dev)
{
 struct ntb_dev *ntb;
 struct ntb_client *client;
 int rc;

 get_device(dev);
 ntb = dev_ntb(dev);
 client = drv_ntb_client(dev->driver);

 rc = client->ops.probe(client, ntb);
 if (rc)
  put_device(dev);

 return rc;
}
