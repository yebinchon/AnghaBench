
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct toshiba_acpi_dev {TYPE_3__* backlight_dev; TYPE_1__* acpi_dev; scalar_t__ tr_backlight_supported; } ;
struct backlight_properties {scalar_t__ max_brightness; int type; } ;
typedef int props ;
struct TYPE_7__ {int brightness; } ;
struct TYPE_8__ {TYPE_2__ props; } ;
struct TYPE_6__ {int dev; } ;


 int BACKLIGHT_PLATFORM ;
 scalar_t__ HCI_LCD_BRIGHTNESS_LEVELS ;
 scalar_t__ IS_ERR (TYPE_3__*) ;
 int PTR_ERR (TYPE_3__*) ;
 int __get_lcd_brightness (struct toshiba_acpi_dev*) ;
 scalar_t__ acpi_backlight_vendor ;
 scalar_t__ acpi_video_get_backlight_type () ;
 int acpi_video_set_dmi_backlight_type (scalar_t__) ;
 TYPE_3__* backlight_device_register (char*,int *,struct toshiba_acpi_dev*,int *,struct backlight_properties*) ;
 scalar_t__ dmi_check_system (int ) ;
 int memset (struct backlight_properties*,int ,int) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int set_lcd_brightness (struct toshiba_acpi_dev*,int) ;
 int toshiba_backlight_data ;
 int toshiba_vendor_backlight_dmi ;

__attribute__((used)) static int toshiba_acpi_setup_backlight(struct toshiba_acpi_dev *dev)
{
 struct backlight_properties props;
 int brightness;
 int ret;







 brightness = __get_lcd_brightness(dev);
 if (brightness < 0)
  return 0;






 if (dev->tr_backlight_supported && brightness == 0)
  brightness++;
 ret = set_lcd_brightness(dev, brightness);
 if (ret) {
  pr_debug("Backlight method is read-only, disabling backlight support\n");
  return 0;
 }





 if (dev->tr_backlight_supported ||
     dmi_check_system(toshiba_vendor_backlight_dmi))
  acpi_video_set_dmi_backlight_type(acpi_backlight_vendor);

 if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
  return 0;

 memset(&props, 0, sizeof(props));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = HCI_LCD_BRIGHTNESS_LEVELS - 1;


 if (dev->tr_backlight_supported)
  props.max_brightness++;

 dev->backlight_dev = backlight_device_register("toshiba",
             &dev->acpi_dev->dev,
             dev,
             &toshiba_backlight_data,
             &props);
 if (IS_ERR(dev->backlight_dev)) {
  ret = PTR_ERR(dev->backlight_dev);
  pr_err("Could not register toshiba backlight device\n");
  dev->backlight_dev = ((void*)0);
  return ret;
 }

 dev->backlight_dev->props.brightness = brightness;
 return 0;
}
