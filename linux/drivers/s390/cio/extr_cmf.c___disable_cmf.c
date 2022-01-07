
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int (* set ) (struct ccw_device*,int ) ;int (* free ) (struct ccw_device*) ;int attr_group; } ;


 TYPE_2__* cmbops ;
 int put_device (TYPE_1__*) ;
 int stub1 (struct ccw_device*,int ) ;
 int stub2 (struct ccw_device*) ;
 int sysfs_remove_group (int *,int ) ;

int __disable_cmf(struct ccw_device *cdev)
{
 int ret;

 ret = cmbops->set(cdev, 0);
 if (ret)
  return ret;

 sysfs_remove_group(&cdev->dev.kobj, cmbops->attr_group);
 cmbops->free(cdev);
 put_device(&cdev->dev);

 return ret;
}
