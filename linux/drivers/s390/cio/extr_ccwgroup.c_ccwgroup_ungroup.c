
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccwgroup_device {int reg_mutex; int dev; } ;


 int __ccwgroup_remove_cdev_refs (struct ccwgroup_device*) ;
 int __ccwgroup_remove_symlinks (struct ccwgroup_device*) ;
 scalar_t__ device_is_registered (int *) ;
 int device_unregister (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ccwgroup_ungroup(struct ccwgroup_device *gdev)
{
 mutex_lock(&gdev->reg_mutex);
 if (device_is_registered(&gdev->dev)) {
  __ccwgroup_remove_symlinks(gdev);
  device_unregister(&gdev->dev);
  __ccwgroup_remove_cdev_refs(gdev);
 }
 mutex_unlock(&gdev->reg_mutex);
}
