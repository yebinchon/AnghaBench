
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_eckd_private {int gneq; int ned; } ;
struct dasd_device {int cdev; struct dasd_eckd_private* private; } ;


 int ENODEV ;
 int create_uid (struct dasd_eckd_private*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static int dasd_eckd_generate_uid(struct dasd_device *device)
{
 struct dasd_eckd_private *private = device->private;
 unsigned long flags;

 if (!private)
  return -ENODEV;
 if (!private->ned || !private->gneq)
  return -ENODEV;
 spin_lock_irqsave(get_ccwdev_lock(device->cdev), flags);
 create_uid(private);
 spin_unlock_irqrestore(get_ccwdev_lock(device->cdev), flags);
 return 0;
}
