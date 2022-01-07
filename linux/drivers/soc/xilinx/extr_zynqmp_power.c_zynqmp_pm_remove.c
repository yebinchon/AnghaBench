
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int attr; } ;


 TYPE_2__ dev_attr_suspend_mode ;
 int sysfs_remove_file (int *,int *) ;

__attribute__((used)) static int zynqmp_pm_remove(struct platform_device *pdev)
{
 sysfs_remove_file(&pdev->dev.kobj, &dev_attr_suspend_mode.attr);

 return 0;
}
