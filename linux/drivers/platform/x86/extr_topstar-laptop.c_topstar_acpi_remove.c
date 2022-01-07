
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct topstar_laptop {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct topstar_laptop* acpi_driver_data (struct acpi_device*) ;
 int kfree (struct topstar_laptop*) ;
 scalar_t__ led_workaround ;
 int topstar_acpi_exit (struct topstar_laptop*) ;
 int topstar_input_exit (struct topstar_laptop*) ;
 int topstar_led_exit (struct topstar_laptop*) ;
 int topstar_platform_exit (struct topstar_laptop*) ;

__attribute__((used)) static int topstar_acpi_remove(struct acpi_device *device)
{
 struct topstar_laptop *topstar = acpi_driver_data(device);

 if (led_workaround)
  topstar_led_exit(topstar);

 topstar_input_exit(topstar);
 topstar_platform_exit(topstar);
 topstar_acpi_exit(topstar);

 kfree(topstar);
 return 0;
}
