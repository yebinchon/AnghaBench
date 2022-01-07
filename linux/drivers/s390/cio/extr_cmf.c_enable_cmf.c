
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;
struct TYPE_7__ {int (* alloc ) (struct ccw_device*) ;int (* set ) (struct ccw_device*,int) ;int (* free ) (struct ccw_device*) ;int attr_group; int (* reset ) (struct ccw_device*) ;} ;


 TYPE_5__* cmbops ;
 scalar_t__ cmf_enabled (struct ccw_device*) ;
 int device_lock (TYPE_1__*) ;
 int device_unlock (TYPE_1__*) ;
 int get_device (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;
 int stub1 (struct ccw_device*) ;
 int stub2 (struct ccw_device*) ;
 int stub3 (struct ccw_device*) ;
 int stub4 (struct ccw_device*) ;
 int stub5 (struct ccw_device*,int) ;
 int stub6 (struct ccw_device*) ;
 int sysfs_create_group (int *,int ) ;
 int sysfs_remove_group (int *,int ) ;

int enable_cmf(struct ccw_device *cdev)
{
 int ret = 0;

 device_lock(&cdev->dev);
 if (cmf_enabled(cdev)) {
  cmbops->reset(cdev);
  goto out_unlock;
 }
 get_device(&cdev->dev);
 ret = cmbops->alloc(cdev);
 if (ret)
  goto out;
 cmbops->reset(cdev);
 ret = sysfs_create_group(&cdev->dev.kobj, cmbops->attr_group);
 if (ret) {
  cmbops->free(cdev);
  goto out;
 }
 ret = cmbops->set(cdev, 2);
 if (ret) {
  sysfs_remove_group(&cdev->dev.kobj, cmbops->attr_group);
  cmbops->free(cdev);
 }
out:
 if (ret)
  put_device(&cdev->dev);
out_unlock:
 device_unlock(&cdev->dev);
 return ret;
}
