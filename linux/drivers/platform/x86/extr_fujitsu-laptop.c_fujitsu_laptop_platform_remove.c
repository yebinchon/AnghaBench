
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fujitsu_laptop {TYPE_2__* pf_device; } ;
struct acpi_device {int dummy; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct fujitsu_laptop* acpi_driver_data (struct acpi_device*) ;
 int fujitsu_pf_attribute_group ;
 int platform_device_unregister (TYPE_2__*) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void fujitsu_laptop_platform_remove(struct acpi_device *device)
{
 struct fujitsu_laptop *priv = acpi_driver_data(device);

 sysfs_remove_group(&priv->pf_device->dev.kobj,
      &fujitsu_pf_attribute_group);
 platform_device_unregister(priv->pf_device);
}
