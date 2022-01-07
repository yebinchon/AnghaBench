
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct asus_laptop {int handle; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int METHOD_BRIGHTNESS_GET ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;
 struct asus_laptop* bl_get_data (struct backlight_device*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int asus_read_brightness(struct backlight_device *bd)
{
 struct asus_laptop *asus = bl_get_data(bd);
 unsigned long long value;
 acpi_status rv;

 rv = acpi_evaluate_integer(asus->handle, METHOD_BRIGHTNESS_GET,
       ((void*)0), &value);
 if (ACPI_FAILURE(rv)) {
  pr_warn("Error reading brightness\n");
  return 0;
 }

 return value;
}
