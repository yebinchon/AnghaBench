
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int tape_state; int cdev_id; int cdev; } ;
struct ccw_device {int dev; } ;


 int DBF_EVENT (int,char*,int ) ;
 int DBF_LH (int,char*,int ,...) ;
 int EBUSY ;
 int ENODEV ;



 struct tape_device* dev_get_drvdata (int *) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int tape_cleanup_device (struct tape_device*) ;
 int tape_state_set (struct tape_device*,int const) ;

int
tape_generic_offline(struct ccw_device *cdev)
{
 struct tape_device *device;

 device = dev_get_drvdata(&cdev->dev);
 if (!device) {
  return -ENODEV;
 }

 DBF_LH(3, "(%08x): tape_generic_offline(%p)\n",
  device->cdev_id, device);

 spin_lock_irq(get_ccwdev_lock(device->cdev));
 switch (device->tape_state) {
  case 130:
  case 129:
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   break;
  case 128:
   tape_state_set(device, 130);
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   tape_cleanup_device(device);
   break;
  default:
   DBF_EVENT(3, "(%08x): Set offline failed "
    "- drive in use.\n",
    device->cdev_id);
   spin_unlock_irq(get_ccwdev_lock(device->cdev));
   return -EBUSY;
 }

 DBF_LH(3, "(%08x): Drive set offline.\n", device->cdev_id);
 return 0;
}
