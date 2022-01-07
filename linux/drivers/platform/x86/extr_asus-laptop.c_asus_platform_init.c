
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct asus_laptop {TYPE_2__* platform_device; } ;
struct TYPE_7__ {int kobj; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;


 int ASUS_LAPTOP_FILE ;
 int ENOMEM ;
 int asus_attr_group ;
 int platform_device_add (TYPE_2__*) ;
 TYPE_2__* platform_device_alloc (int ,int) ;
 int platform_device_del (TYPE_2__*) ;
 int platform_device_put (TYPE_2__*) ;
 int platform_set_drvdata (TYPE_2__*,struct asus_laptop*) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int asus_platform_init(struct asus_laptop *asus)
{
 int result;

 asus->platform_device = platform_device_alloc(ASUS_LAPTOP_FILE, -1);
 if (!asus->platform_device)
  return -ENOMEM;
 platform_set_drvdata(asus->platform_device, asus);

 result = platform_device_add(asus->platform_device);
 if (result)
  goto fail_platform_device;

 result = sysfs_create_group(&asus->platform_device->dev.kobj,
        &asus_attr_group);
 if (result)
  goto fail_sysfs;

 return 0;

fail_sysfs:
 platform_device_del(asus->platform_device);
fail_platform_device:
 platform_device_put(asus->platform_device);
 return result;
}
