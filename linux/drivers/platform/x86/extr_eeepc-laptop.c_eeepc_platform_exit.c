
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eeepc_laptop {TYPE_2__* platform_device; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int platform_attribute_group ;
 int platform_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void eeepc_platform_exit(struct eeepc_laptop *eeepc)
{
 sysfs_remove_group(&eeepc->platform_device->dev.kobj,
      &platform_attribute_group);
 platform_device_unregister(eeepc->platform_device);
}
