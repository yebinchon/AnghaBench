
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_driver {int (* rescan ) (struct device*) ;} ;
struct scsi_device {TYPE_1__* handler; } ;
struct device {TYPE_2__* driver; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int (* rescan ) (struct scsi_device*) ;} ;


 int device_lock (struct device*) ;
 int device_unlock (struct device*) ;
 int module_put (int ) ;
 int scsi_attach_vpd (struct scsi_device*) ;
 int stub1 (struct scsi_device*) ;
 int stub2 (struct device*) ;
 struct scsi_device* to_scsi_device (struct device*) ;
 struct scsi_driver* to_scsi_driver (TYPE_2__*) ;
 scalar_t__ try_module_get (int ) ;

void scsi_rescan_device(struct device *dev)
{
 struct scsi_device *sdev = to_scsi_device(dev);

 device_lock(dev);

 scsi_attach_vpd(sdev);

 if (sdev->handler && sdev->handler->rescan)
  sdev->handler->rescan(sdev);

 if (dev->driver && try_module_get(dev->driver->owner)) {
  struct scsi_driver *drv = to_scsi_driver(dev->driver);

  if (drv->rescan)
   drv->rescan(dev);
  module_put(dev->driver->owner);
 }
 device_unlock(dev);
}
