
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_driver {int (* remove ) (struct ssb_device*) ;} ;
struct ssb_device {int dummy; } ;
struct device {int driver; } ;


 struct ssb_device* dev_to_ssb_dev (struct device*) ;
 struct ssb_driver* drv_to_ssb_drv (int ) ;
 int ssb_device_put (struct ssb_device*) ;
 int stub1 (struct ssb_device*) ;

__attribute__((used)) static int ssb_device_remove(struct device *dev)
{
 struct ssb_device *ssb_dev = dev_to_ssb_dev(dev);
 struct ssb_driver *ssb_drv = drv_to_ssb_drv(dev->driver);

 if (ssb_drv && ssb_drv->remove)
  ssb_drv->remove(ssb_dev);
 ssb_device_put(ssb_dev);

 return 0;
}
