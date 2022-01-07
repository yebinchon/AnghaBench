
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_driver {int (* is_ready ) (struct xenbus_device*) ;} ;
struct xenbus_device {scalar_t__ state; int nodename; } ;
struct device_driver {int dummy; } ;
struct device {struct device_driver* driver; } ;


 scalar_t__ XenbusStateConnected ;
 scalar_t__ strncmp (int ,char*,int) ;
 int stub1 (struct xenbus_device*) ;
 struct xenbus_device* to_xenbus_device (struct device*) ;
 struct xenbus_driver* to_xenbus_driver (struct device_driver*) ;

__attribute__((used)) static int is_device_connecting(struct device *dev, void *data, bool ignore_nonessential)
{
 struct xenbus_device *xendev = to_xenbus_device(dev);
 struct device_driver *drv = data;
 struct xenbus_driver *xendrv;





 if (!dev->driver)
  return 0;


 if (drv && (dev->driver != drv))
  return 0;

 if (ignore_nonessential) {





  if ((strncmp(xendev->nodename, "device/vkbd", 11) == 0))
   return 0;

  if ((strncmp(xendev->nodename, "device/vfb", 10) == 0))
   return 0;
 }
 xendrv = to_xenbus_driver(dev->driver);
 return (xendev->state < XenbusStateConnected ||
  (xendev->state == XenbusStateConnected &&
   xendrv->is_ready && !xendrv->is_ready(xendev)));
}
