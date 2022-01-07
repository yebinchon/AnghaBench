
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct samsung_laptop {struct platform_device* platform_device; } ;
struct TYPE_2__ {int kobj; } ;
struct platform_device {TYPE_1__ dev; } ;


 int platform_attribute_group ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void samsung_sysfs_exit(struct samsung_laptop *samsung)
{
 struct platform_device *device = samsung->platform_device;

 sysfs_remove_group(&device->dev.kobj, &platform_attribute_group);
}
