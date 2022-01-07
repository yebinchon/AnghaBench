
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct ccw_device {TYPE_1__ dev; } ;


 int dasd_attr_groups ;
 int sysfs_remove_groups (int *,int ) ;

void
dasd_remove_sysfs_files(struct ccw_device *cdev)
{
 sysfs_remove_groups(&cdev->dev.kobj, dasd_attr_groups);
}
