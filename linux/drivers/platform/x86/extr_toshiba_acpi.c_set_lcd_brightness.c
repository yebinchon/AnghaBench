
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct toshiba_acpi_dev {scalar_t__ tr_backlight_supported; } ;


 int EIO ;
 int ENODEV ;
 int HCI_LCD_BRIGHTNESS ;
 int HCI_LCD_BRIGHTNESS_SHIFT ;
 scalar_t__ TOS_FAILURE ;
 scalar_t__ TOS_NOT_SUPPORTED ;
 scalar_t__ TOS_SUCCESS ;
 scalar_t__ hci_write (struct toshiba_acpi_dev*,int ,int) ;
 int pr_err (char*) ;
 int set_tr_backlight_status (struct toshiba_acpi_dev*,int) ;

__attribute__((used)) static int set_lcd_brightness(struct toshiba_acpi_dev *dev, int value)
{
 u32 result;

 if (dev->tr_backlight_supported) {
  int ret = set_tr_backlight_status(dev, !value);

  if (ret)
   return ret;
  if (value)
   value--;
 }

 value = value << HCI_LCD_BRIGHTNESS_SHIFT;
 result = hci_write(dev, HCI_LCD_BRIGHTNESS, value);
 if (result == TOS_FAILURE)
  pr_err("ACPI call to set LCD Brightness failed\n");
 else if (result == TOS_NOT_SUPPORTED)
  return -ENODEV;

 return result == TOS_SUCCESS ? 0 : -EIO;
}
