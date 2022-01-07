
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toshiba_acpi_dev {int dummy; } ;
struct backlight_device {int dummy; } ;


 int __get_lcd_brightness (struct toshiba_acpi_dev*) ;
 struct toshiba_acpi_dev* bl_get_data (struct backlight_device*) ;

__attribute__((used)) static int get_lcd_brightness(struct backlight_device *bd)
{
 struct toshiba_acpi_dev *dev = bl_get_data(bd);

 return __get_lcd_brightness(dev);
}
