
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct asus_laptop {TYPE_2__* platform_device; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int asus_attr_group ;
 int platform_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void asus_platform_exit(struct asus_laptop *asus)
{
 sysfs_remove_group(&asus->platform_device->dev.kobj, &asus_attr_group);
 platform_device_unregister(asus->platform_device);
}
