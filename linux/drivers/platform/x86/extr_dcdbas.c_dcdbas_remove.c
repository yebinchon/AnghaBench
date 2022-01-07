
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int dcdbas_attr_group ;
 int dcdbas_reboot_nb ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static int dcdbas_remove(struct platform_device *dev)
{
 unregister_reboot_notifier(&dcdbas_reboot_nb);
 sysfs_remove_group(&dev->dev.kobj, &dcdbas_attr_group);

 return 0;
}
