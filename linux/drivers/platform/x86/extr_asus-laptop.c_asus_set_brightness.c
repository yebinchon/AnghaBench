
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backlight_device {int dummy; } ;
struct asus_laptop {int handle; } ;


 int EIO ;
 int METHOD_BRIGHTNESS_SET ;
 struct asus_laptop* bl_get_data (struct backlight_device*) ;
 int pr_warn (char*) ;
 scalar_t__ write_acpi_int (int ,int ,int) ;

__attribute__((used)) static int asus_set_brightness(struct backlight_device *bd, int value)
{
 struct asus_laptop *asus = bl_get_data(bd);

 if (write_acpi_int(asus->handle, METHOD_BRIGHTNESS_SET, value)) {
  pr_warn("Error changing brightness\n");
  return -EIO;
 }
 return 0;
}
