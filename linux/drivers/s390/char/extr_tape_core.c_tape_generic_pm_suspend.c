
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {scalar_t__ medium_state; int tape_state; int cdev_id; int cdev; } ;
struct ccw_device {int dev; } ;


 int DBF_LH (int,char*,int ,...) ;
 int EBUSY ;
 int ENODEV ;
 scalar_t__ MS_UNLOADED ;



 struct tape_device* dev_get_drvdata (int *) ;
 int dev_name (int *) ;
 int get_ccwdev_lock (int ) ;
 int pr_err (char*,int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

int tape_generic_pm_suspend(struct ccw_device *cdev)
{
 struct tape_device *device;

 device = dev_get_drvdata(&cdev->dev);
 if (!device) {
  return -ENODEV;
 }

 DBF_LH(3, "(%08x): tape_generic_pm_suspend(%p)\n",
  device->cdev_id, device);

 if (device->medium_state != MS_UNLOADED) {
  pr_err("A cartridge is loaded in tape device %s, "
         "refusing to suspend\n", dev_name(&cdev->dev));
  return -EBUSY;
 }

 spin_lock_irq(get_ccwdev_lock(device->cdev));
 switch (device->tape_state) {
  case 130:
  case 129:
  case 128:
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   break;
  default:
   pr_err("Tape device %s is busy, refusing to "
          "suspend\n", dev_name(&cdev->dev));
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   return -EBUSY;
 }

 DBF_LH(3, "(%08x): Drive suspended.\n", device->cdev_id);
 return 0;
}
