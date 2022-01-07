
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device_driver {int (* probe ) (int ) ;} ;
struct device {int driver; } ;


 int dev_pm_domain_attach (struct device*,int) ;
 int dev_pm_domain_detach (struct device*,int) ;
 int stub1 (int ) ;
 int to_serdev_device (struct device*) ;
 struct serdev_device_driver* to_serdev_device_driver (int ) ;

__attribute__((used)) static int serdev_drv_probe(struct device *dev)
{
 const struct serdev_device_driver *sdrv = to_serdev_device_driver(dev->driver);
 int ret;

 ret = dev_pm_domain_attach(dev, 1);
 if (ret)
  return ret;

 ret = sdrv->probe(to_serdev_device(dev));
 if (ret)
  dev_pm_domain_detach(dev, 1);

 return ret;
}
