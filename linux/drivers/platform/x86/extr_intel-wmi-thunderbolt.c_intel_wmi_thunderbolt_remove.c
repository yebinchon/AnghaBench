
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct wmi_device {TYPE_1__ dev; } ;


 int KOBJ_CHANGE ;
 int kobject_uevent (int *,int ) ;
 int sysfs_remove_group (int *,int *) ;
 int tbt_attribute_group ;

__attribute__((used)) static int intel_wmi_thunderbolt_remove(struct wmi_device *wdev)
{
 sysfs_remove_group(&wdev->dev.kobj, &tbt_attribute_group);
 kobject_uevent(&wdev->dev.kobj, KOBJ_CHANGE);
 return 0;
}
