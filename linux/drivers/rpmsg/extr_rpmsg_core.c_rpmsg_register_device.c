
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int * bus; int parent; } ;
struct TYPE_2__ {int name; } ;
struct rpmsg_device {struct device dev; int dst; int src; TYPE_1__ id; } ;


 int dev_err (struct device*,char*,int) ;
 int dev_name (int ) ;
 int dev_set_name (struct device*,char*,int ,int ,int ,int ) ;
 int device_register (struct device*) ;
 int put_device (struct device*) ;
 int rpmsg_bus ;

int rpmsg_register_device(struct rpmsg_device *rpdev)
{
 struct device *dev = &rpdev->dev;
 int ret;

 dev_set_name(&rpdev->dev, "%s.%s.%d.%d", dev_name(dev->parent),
       rpdev->id.name, rpdev->src, rpdev->dst);

 rpdev->dev.bus = &rpmsg_bus;

 ret = device_register(&rpdev->dev);
 if (ret) {
  dev_err(dev, "device_register failed: %d\n", ret);
  put_device(&rpdev->dev);
 }

 return ret;
}
