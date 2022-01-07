
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pwm_lpss_chip {int dummy; } ;
struct pwm_lpss_boardinfo {int dummy; } ;
struct TYPE_8__ {TYPE_1__* driver; } ;
struct platform_device {TYPE_2__ dev; } ;
struct acpi_device_id {scalar_t__ driver_data; } ;
struct TYPE_7__ {int acpi_match_table; } ;


 int DPM_FLAG_SMART_PREPARE ;
 int ENODEV ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct pwm_lpss_chip*) ;
 int PTR_ERR (struct pwm_lpss_chip*) ;
 struct acpi_device_id* acpi_match_device (int ,TYPE_2__*) ;
 int dev_pm_set_driver_flags (TYPE_2__*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pwm_lpss_chip*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pm_runtime_set_active (TYPE_2__*) ;
 struct pwm_lpss_chip* pwm_lpss_probe (TYPE_2__*,struct resource*,struct pwm_lpss_boardinfo const*) ;

__attribute__((used)) static int pwm_lpss_probe_platform(struct platform_device *pdev)
{
 const struct pwm_lpss_boardinfo *info;
 const struct acpi_device_id *id;
 struct pwm_lpss_chip *lpwm;
 struct resource *r;

 id = acpi_match_device(pdev->dev.driver->acpi_match_table, &pdev->dev);
 if (!id)
  return -ENODEV;

 info = (const struct pwm_lpss_boardinfo *)id->driver_data;
 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 lpwm = pwm_lpss_probe(&pdev->dev, r, info);
 if (IS_ERR(lpwm))
  return PTR_ERR(lpwm);

 platform_set_drvdata(pdev, lpwm);

 dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_SMART_PREPARE);
 pm_runtime_set_active(&pdev->dev);
 pm_runtime_enable(&pdev->dev);

 return 0;
}
