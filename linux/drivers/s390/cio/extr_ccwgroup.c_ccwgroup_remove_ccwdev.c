
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int dev; } ;
struct ccw_device {int ccwlock; int dev; } ;


 int ccw_device_set_offline (struct ccw_device*) ;
 int ccwgroup_ungroup (struct ccwgroup_device*) ;
 struct ccwgroup_device* dev_get_drvdata (int *) ;
 int get_device (int *) ;
 int put_device (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void ccwgroup_remove_ccwdev(struct ccw_device *cdev)
{
 struct ccwgroup_device *gdev;


 ccw_device_set_offline(cdev);

 spin_lock_irq(cdev->ccwlock);
 gdev = dev_get_drvdata(&cdev->dev);
 if (!gdev) {
  spin_unlock_irq(cdev->ccwlock);
  return;
 }

 get_device(&gdev->dev);
 spin_unlock_irq(cdev->ccwlock);

 ccwgroup_ungroup(gdev);

 put_device(&gdev->dev);
}
