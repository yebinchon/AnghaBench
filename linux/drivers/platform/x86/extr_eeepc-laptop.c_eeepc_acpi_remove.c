
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int dummy; } ;
struct acpi_device {int dummy; } ;


 struct eeepc_laptop* acpi_driver_data (struct acpi_device*) ;
 int eeepc_backlight_exit (struct eeepc_laptop*) ;
 int eeepc_input_exit (struct eeepc_laptop*) ;
 int eeepc_led_exit (struct eeepc_laptop*) ;
 int eeepc_platform_exit (struct eeepc_laptop*) ;
 int eeepc_rfkill_exit (struct eeepc_laptop*) ;
 int kfree (struct eeepc_laptop*) ;

__attribute__((used)) static int eeepc_acpi_remove(struct acpi_device *device)
{
 struct eeepc_laptop *eeepc = acpi_driver_data(device);

 eeepc_backlight_exit(eeepc);
 eeepc_rfkill_exit(eeepc);
 eeepc_input_exit(eeepc);
 eeepc_led_exit(eeepc);
 eeepc_platform_exit(eeepc);

 kfree(eeepc);
 return 0;
}
