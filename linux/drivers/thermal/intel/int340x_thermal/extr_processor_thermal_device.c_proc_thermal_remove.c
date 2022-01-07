
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc_thermal_device {TYPE_2__* dev; int int340x_zone; TYPE_1__* adev; } ;
struct TYPE_6__ {int attr; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_4__ {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 TYPE_3__ dev_attr_tcc_offset_degree_celsius ;
 int int340x_thermal_zone_remove (int ) ;
 int power_limit_attribute_group ;
 int proc_thermal_notify ;
 int sysfs_remove_file (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static void proc_thermal_remove(struct proc_thermal_device *proc_priv)
{
 acpi_remove_notify_handler(proc_priv->adev->handle,
       ACPI_DEVICE_NOTIFY, proc_thermal_notify);
 int340x_thermal_zone_remove(proc_priv->int340x_zone);
 sysfs_remove_file(&proc_priv->dev->kobj, &dev_attr_tcc_offset_degree_celsius.attr);
 sysfs_remove_group(&proc_priv->dev->kobj,
      &power_limit_attribute_group);
}
