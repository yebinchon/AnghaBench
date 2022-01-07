
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_driver {int (* probe ) (struct slim_device*) ;} ;
struct slim_device {int dev; } ;
struct device {int driver; } ;


 int EPROBE_DEFER ;
 int SLIM_DEVICE_STATUS_UP ;
 int dev_err (int *,char*) ;
 int slim_device_update_status (struct slim_device*,int ) ;
 int slim_get_logical_addr (struct slim_device*) ;
 int stub1 (struct slim_device*) ;
 struct slim_device* to_slim_device (struct device*) ;
 struct slim_driver* to_slim_driver (int ) ;

__attribute__((used)) static int slim_device_probe(struct device *dev)
{
 struct slim_device *sbdev = to_slim_device(dev);
 struct slim_driver *sbdrv = to_slim_driver(dev->driver);
 int ret;

 ret = sbdrv->probe(sbdev);
 if (ret)
  return ret;


 ret = slim_get_logical_addr(sbdev);
 if (!ret) {
  slim_device_update_status(sbdev, SLIM_DEVICE_STATUS_UP);
 } else {
  dev_err(&sbdev->dev, "Failed to get logical address\n");
  ret = -EPROBE_DEFER;
 }

 return ret;
}
