
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct toshiba_acpi_dev {int dummy; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 struct toshiba_acpi_dev* bl_get_data (struct backlight_device*) ;
 int set_lcd_brightness (struct toshiba_acpi_dev*,int ) ;

__attribute__((used)) static int set_lcd_status(struct backlight_device *bd)
{
 struct toshiba_acpi_dev *dev = bl_get_data(bd);

 return set_lcd_brightness(dev, bd->props.brightness);
}
