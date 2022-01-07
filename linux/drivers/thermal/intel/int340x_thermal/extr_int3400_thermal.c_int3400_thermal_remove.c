
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct int3400_thermal_priv {struct int3400_thermal_priv* arts; struct int3400_thermal_priv* trts; int thermal; TYPE_1__* adev; int rel_misc_dev_res; } ;
struct TYPE_3__ {int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int acpi_thermal_rel_misc_device_remove (int ) ;
 int int3400_notify ;
 int kfree (struct int3400_thermal_priv*) ;
 struct int3400_thermal_priv* platform_get_drvdata (struct platform_device*) ;
 int sysfs_remove_group (int *,int *) ;
 int thermal_zone_device_unregister (int ) ;
 int uuid_attribute_group ;

__attribute__((used)) static int int3400_thermal_remove(struct platform_device *pdev)
{
 struct int3400_thermal_priv *priv = platform_get_drvdata(pdev);

 acpi_remove_notify_handler(
   priv->adev->handle, ACPI_DEVICE_NOTIFY,
   int3400_notify);

 if (!priv->rel_misc_dev_res)
  acpi_thermal_rel_misc_device_remove(priv->adev->handle);

 sysfs_remove_group(&pdev->dev.kobj, &uuid_attribute_group);
 thermal_zone_device_unregister(priv->thermal);
 kfree(priv->trts);
 kfree(priv->arts);
 kfree(priv);
 return 0;
}
