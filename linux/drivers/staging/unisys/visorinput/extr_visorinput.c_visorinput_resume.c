
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* visorbus_state_complete_func ) (struct visor_device*,int ) ;
struct visorinput_devdata {int paused; int lock_visor_dev; scalar_t__ interrupts_enabled; } ;
struct visor_device {int device; } ;


 int EBUSY ;
 int ENODEV ;
 struct visorinput_devdata* dev_get_drvdata (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int visorbus_enable_channel_interrupts (struct visor_device*) ;

__attribute__((used)) static int visorinput_resume(struct visor_device *dev,
        visorbus_state_complete_func complete_func)
{
 int rc;
 struct visorinput_devdata *devdata = dev_get_drvdata(&dev->device);

 if (!devdata) {
  rc = -ENODEV;
  goto out;
 }
 mutex_lock(&devdata->lock_visor_dev);
 if (!devdata->paused) {
  rc = -EBUSY;
  goto out_locked;
 }
 devdata->paused = 0;
 complete_func(dev, 0);






 if (devdata->interrupts_enabled)
  visorbus_enable_channel_interrupts(dev);

 rc = 0;
out_locked:
 mutex_unlock(&devdata->lock_visor_dev);
out:
 return rc;
}
