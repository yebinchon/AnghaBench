
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct int3402_thermal_data {int handle; int int340x_zone; } ;
struct acpi_device {int handle; } ;


 struct acpi_device* ACPI_COMPANION (int *) ;
 int ACPI_DEVICE_NOTIFY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int acpi_has_method (int ,char*) ;
 int acpi_install_notify_handler (int ,int ,int ,struct int3402_thermal_data*) ;
 struct int3402_thermal_data* devm_kzalloc (int *,int,int ) ;
 int int3402_notify ;
 int int340x_thermal_zone_add (struct acpi_device*,int *) ;
 int int340x_thermal_zone_remove (int ) ;
 int platform_set_drvdata (struct platform_device*,struct int3402_thermal_data*) ;

__attribute__((used)) static int int3402_thermal_probe(struct platform_device *pdev)
{
 struct acpi_device *adev = ACPI_COMPANION(&pdev->dev);
 struct int3402_thermal_data *d;
 int ret;

 if (!acpi_has_method(adev->handle, "_TMP"))
  return -ENODEV;

 d = devm_kzalloc(&pdev->dev, sizeof(*d), GFP_KERNEL);
 if (!d)
  return -ENOMEM;

 d->int340x_zone = int340x_thermal_zone_add(adev, ((void*)0));
 if (IS_ERR(d->int340x_zone))
  return PTR_ERR(d->int340x_zone);

 ret = acpi_install_notify_handler(adev->handle,
       ACPI_DEVICE_NOTIFY,
       int3402_notify,
       d);
 if (ret) {
  int340x_thermal_zone_remove(d->int340x_zone);
  return ret;
 }

 d->handle = adev->handle;
 platform_set_drvdata(pdev, d);

 return 0;
}
