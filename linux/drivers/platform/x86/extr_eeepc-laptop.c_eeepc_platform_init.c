
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct eeepc_laptop {TYPE_2__* platform_device; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int EEEPC_LAPTOP_FILE ;
 int ENOMEM ;
 int platform_attribute_group ;
 int platform_device_add (TYPE_2__*) ;
 TYPE_2__* platform_device_alloc (int ,int) ;
 int platform_device_del (TYPE_2__*) ;
 int platform_device_put (TYPE_2__*) ;
 int platform_set_drvdata (TYPE_2__*,struct eeepc_laptop*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int eeepc_platform_init(struct eeepc_laptop *eeepc)
{
 int result;

 eeepc->platform_device = platform_device_alloc(EEEPC_LAPTOP_FILE, -1);
 if (!eeepc->platform_device)
  return -ENOMEM;
 platform_set_drvdata(eeepc->platform_device, eeepc);

 result = platform_device_add(eeepc->platform_device);
 if (result)
  goto fail_platform_device;

 result = sysfs_create_group(&eeepc->platform_device->dev.kobj,
        &platform_attribute_group);
 if (result)
  goto fail_sysfs;
 return 0;

fail_sysfs:
 platform_device_del(eeepc->platform_device);
fail_platform_device:
 platform_device_put(eeepc->platform_device);
 return result;
}
