
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct int3402_thermal_data {int int340x_zone; int handle; } ;


 int ACPI_DEVICE_NOTIFY ;
 int acpi_remove_notify_handler (int ,int ,int ) ;
 int int3402_notify ;
 int int340x_thermal_zone_remove (int ) ;
 struct int3402_thermal_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int int3402_thermal_remove(struct platform_device *pdev)
{
 struct int3402_thermal_data *d = platform_get_drvdata(pdev);

 acpi_remove_notify_handler(d->handle,
       ACPI_DEVICE_NOTIFY, int3402_notify);
 int340x_thermal_zone_remove(d->int340x_zone);

 return 0;
}
