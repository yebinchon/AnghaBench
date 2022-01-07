
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device_driver {int (* remove ) (int ) ;} ;
struct device {int driver; } ;


 int dev_pm_domain_detach (struct device*,int) ;
 int stub1 (int ) ;
 int to_serdev_device (struct device*) ;
 struct serdev_device_driver* to_serdev_device_driver (int ) ;

__attribute__((used)) static int serdev_drv_remove(struct device *dev)
{
 const struct serdev_device_driver *sdrv = to_serdev_device_driver(dev->driver);
 if (sdrv->remove)
  sdrv->remove(to_serdev_device(dev));

 dev_pm_domain_detach(dev, 1);

 return 0;
}
