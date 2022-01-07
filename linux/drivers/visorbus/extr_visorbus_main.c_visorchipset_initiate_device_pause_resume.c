
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct visor_driver {int (* pause ) (struct visor_device*,int ) ;int (* resume ) (struct visor_device*,int ) ;} ;
struct TYPE_2__ {int driver; } ;
struct visor_device {int pausing; int resuming; TYPE_1__ device; } ;


 int EBUSY ;
 int pause_state_change_complete ;
 int publish_vbus_dev_info (struct visor_device*) ;
 int resume_state_change_complete ;
 int stub1 (struct visor_device*,int ) ;
 int stub2 (struct visor_device*,int ) ;
 struct visor_driver* to_visor_driver (int ) ;

__attribute__((used)) static int visorchipset_initiate_device_pause_resume(struct visor_device *dev,
           bool is_pause)
{
 int err;
 struct visor_driver *drv;


 if (!dev->device.driver)
  return 0;
 if (dev->pausing || dev->resuming)
  return -EBUSY;

 drv = to_visor_driver(dev->device.driver);
 if (is_pause) {
  dev->pausing = 1;
  err = drv->pause(dev, pause_state_change_complete);
 } else {




  publish_vbus_dev_info(dev);
  dev->resuming = 1;
  err = drv->resume(dev, resume_state_change_complete);
 }
 return err;
}
