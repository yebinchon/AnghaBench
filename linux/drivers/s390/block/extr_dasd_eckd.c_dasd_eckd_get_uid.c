
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {struct dasd_uid uid; } ;
struct dasd_device {int cdev; struct dasd_eckd_private* private; } ;


 int EINVAL ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int dasd_eckd_get_uid(struct dasd_device *device, struct dasd_uid *uid)
{
 struct dasd_eckd_private *private = device->private;
 unsigned long flags;

 if (private) {
  spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
  *uid = private->uid;
  spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
  return 0;
 }
 return -EINVAL;
}
