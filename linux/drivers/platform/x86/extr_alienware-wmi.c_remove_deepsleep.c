
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {scalar_t__ deepslp; } ;


 int deepsleep_attribute_group ;
 TYPE_2__* quirks ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void remove_deepsleep(struct platform_device *dev)
{
 if (quirks->deepslp > 0)
  sysfs_remove_group(&dev->dev.kobj, &deepsleep_attribute_group);
}
