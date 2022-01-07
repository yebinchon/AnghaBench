
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wilco_ec_device {TYPE_1__* dev; } ;
struct TYPE_2__ {int kobj; } ;


 int sysfs_remove_group (int *,int *) ;
 int wilco_dev_attr_group ;

void wilco_ec_remove_sysfs(struct wilco_ec_device *ec)
{
 sysfs_remove_group(&ec->dev->kobj, &wilco_dev_attr_group);
}
