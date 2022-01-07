
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asus_laptop {struct asus_laptop* name; } ;
struct acpi_device {int dummy; } ;


 struct asus_laptop* acpi_driver_data (struct acpi_device*) ;
 int asus_backlight_exit (struct asus_laptop*) ;
 int asus_input_exit (struct asus_laptop*) ;
 int asus_led_exit (struct asus_laptop*) ;
 int asus_platform_exit (struct asus_laptop*) ;
 int asus_rfkill_exit (struct asus_laptop*) ;
 int kfree (struct asus_laptop*) ;
 int pega_accel_exit (struct asus_laptop*) ;

__attribute__((used)) static int asus_acpi_remove(struct acpi_device *device)
{
 struct asus_laptop *asus = acpi_driver_data(device);

 asus_backlight_exit(asus);
 asus_rfkill_exit(asus);
 asus_led_exit(asus);
 asus_input_exit(asus);
 pega_accel_exit(asus);
 asus_platform_exit(asus);

 kfree(asus->name);
 kfree(asus);
 return 0;
}
