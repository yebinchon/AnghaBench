
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int kobj; } ;
struct platform_device {TYPE_3__ dev; } ;
struct int3400_thermal_priv {struct int3400_thermal_priv* arts; struct int3400_thermal_priv* trts; int thermal; struct acpi_device* adev; int rel_misc_dev_res; int trt_count; int art_count; } ;
struct acpi_device {int handle; } ;
struct TYPE_5__ {int set_mode; int get_mode; } ;


 struct acpi_device* ACPI_COMPANION (TYPE_3__*) ;
 int ACPI_DEVICE_NOTIFY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_install_notify_handler (int ,int ,int ,void*) ;
 int acpi_parse_art (int ,int *,struct int3400_thermal_priv**,int) ;
 int acpi_parse_trt (int ,int *,struct int3400_thermal_priv**,int) ;
 int acpi_thermal_rel_misc_device_add (int ) ;
 int acpi_thermal_rel_misc_device_remove (int ) ;
 int dev_dbg (TYPE_3__*,char*) ;
 int int3400_notify ;
 int int3400_thermal_get_mode ;
 int int3400_thermal_get_uuids (struct int3400_thermal_priv*) ;
 TYPE_1__ int3400_thermal_ops ;
 int int3400_thermal_params ;
 int int3400_thermal_set_mode ;
 int kfree (struct int3400_thermal_priv*) ;
 struct int3400_thermal_priv* kzalloc (int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct int3400_thermal_priv*) ;
 int sysfs_create_group (int *,int *) ;
 int sysfs_remove_group (int *,int *) ;
 int thermal_zone_device_register (char*,int ,int ,struct int3400_thermal_priv*,TYPE_1__*,int *,int ,int ) ;
 int thermal_zone_device_unregister (int ) ;
 int uuid_attribute_group ;

__attribute__((used)) static int int3400_thermal_probe(struct platform_device *pdev)
{
 struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
 struct int3400_thermal_priv *priv;
 int result;

 if (!adev)
  return -ENODEV;

 priv = kzalloc(sizeof(struct int3400_thermal_priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->adev = adev;

 result = int3400_thermal_get_uuids(priv);
 if (result)
  goto free_priv;

 result = acpi_parse_art(priv->adev->handle, &priv->art_count,
    &priv->arts, 1);
 if (result)
  dev_dbg(&pdev->dev, "_ART table parsing error\n");

 result = acpi_parse_trt(priv->adev->handle, &priv->trt_count,
    &priv->trts, 1);
 if (result)
  dev_dbg(&pdev->dev, "_TRT table parsing error\n");

 platform_set_drvdata(pdev, priv);

 int3400_thermal_ops.get_mode = int3400_thermal_get_mode;
 int3400_thermal_ops.set_mode = int3400_thermal_set_mode;

 priv->thermal = thermal_zone_device_register("INT3400 Thermal", 0, 0,
      priv, &int3400_thermal_ops,
      &int3400_thermal_params, 0, 0);
 if (IS_ERR(priv->thermal)) {
  result = PTR_ERR(priv->thermal);
  goto free_art_trt;
 }

 priv->rel_misc_dev_res = acpi_thermal_rel_misc_device_add(
       priv->adev->handle);

 result = sysfs_create_group(&pdev->dev.kobj, &uuid_attribute_group);
 if (result)
  goto free_rel_misc;

 result = acpi_install_notify_handler(
   priv->adev->handle, ACPI_DEVICE_NOTIFY, int3400_notify,
   (void *)priv);
 if (result)
  goto free_sysfs;

 return 0;

free_sysfs:
 sysfs_remove_group(&pdev->dev.kobj, &uuid_attribute_group);
free_rel_misc:
 if (!priv->rel_misc_dev_res)
  acpi_thermal_rel_misc_device_remove(priv->adev->handle);
 thermal_zone_device_unregister(priv->thermal);
free_art_trt:
 kfree(priv->trts);
 kfree(priv->arts);
free_priv:
 kfree(priv);
 return result;
}
