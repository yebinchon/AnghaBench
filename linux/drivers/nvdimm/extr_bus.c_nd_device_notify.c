
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_device_driver {int (* notify ) (struct device*,int) ;} ;
struct device {scalar_t__ driver; } ;
typedef enum nvdimm_event { ____Placeholder_nvdimm_event } nvdimm_event ;


 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int stub1 (struct device*,int) ;
 struct nd_device_driver* to_nd_device_driver (scalar_t__) ;

void nd_device_notify(struct device *dev, enum nvdimm_event event)
{
 nd_device_lock(dev);
 if (dev->driver) {
  struct nd_device_driver *nd_drv;

  nd_drv = to_nd_device_driver(dev->driver);
  if (nd_drv->notify)
   nd_drv->notify(dev, event);
 }
 nd_device_unlock(dev);
}
