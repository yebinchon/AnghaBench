
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccw_device {int dev; scalar_t__ online; } ;


 int TRACE (char*) ;
 int dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int ur_remove_attributes (int *) ;
 int ur_set_offline_force (struct ccw_device*,int) ;
 int urdev_put (int ) ;
 int vmur_mutex ;

__attribute__((used)) static void ur_remove(struct ccw_device *cdev)
{
 unsigned long flags;

 TRACE("ur_remove\n");

 mutex_lock(&vmur_mutex);

 if (cdev->online)
  ur_set_offline_force(cdev, 1);
 ur_remove_attributes(&cdev->dev);

 spin_lock_irqsave(get_ccwdev_lock(cdev), flags);
 urdev_put(dev_get_drvdata(&cdev->dev));
 dev_set_drvdata(&cdev->dev, ((void*)0));
 spin_unlock_irqrestore(get_ccwdev_lock(cdev), flags);

 mutex_unlock(&vmur_mutex);
}
