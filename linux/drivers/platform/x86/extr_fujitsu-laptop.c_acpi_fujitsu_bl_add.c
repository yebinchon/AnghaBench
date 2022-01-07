
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fujitsu_bl {int max_brightness; } ;
struct acpi_device {struct fujitsu_bl* driver_data; int dev; } ;


 int ACPI_FUJITSU_BL_DEVICE_NAME ;
 int ACPI_FUJITSU_CLASS ;
 int ENODEV ;
 int ENOMEM ;
 int FUJITSU_LCD_N_LEVELS ;
 int GFP_KERNEL ;
 scalar_t__ acpi_backlight_vendor ;
 int acpi_device_bid (struct acpi_device*) ;
 int acpi_device_class (struct acpi_device*) ;
 int acpi_device_name (struct acpi_device*) ;
 int acpi_fujitsu_bl_input_setup (struct acpi_device*) ;
 scalar_t__ acpi_video_get_backlight_type () ;
 struct fujitsu_bl* devm_kzalloc (int *,int,int ) ;
 int fujitsu_backlight_register (struct acpi_device*) ;
 struct fujitsu_bl* fujitsu_bl ;
 int get_lcd_level (struct acpi_device*) ;
 scalar_t__ get_max_brightness (struct acpi_device*) ;
 int pr_info (char*,int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int acpi_fujitsu_bl_add(struct acpi_device *device)
{
 struct fujitsu_bl *priv;
 int ret;

 if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
  return -ENODEV;

 priv = devm_kzalloc(&device->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 fujitsu_bl = priv;
 strcpy(acpi_device_name(device), ACPI_FUJITSU_BL_DEVICE_NAME);
 strcpy(acpi_device_class(device), ACPI_FUJITSU_CLASS);
 device->driver_data = priv;

 pr_info("ACPI: %s [%s]\n",
  acpi_device_name(device), acpi_device_bid(device));

 if (get_max_brightness(device) <= 0)
  priv->max_brightness = FUJITSU_LCD_N_LEVELS;
 get_lcd_level(device);

 ret = acpi_fujitsu_bl_input_setup(device);
 if (ret)
  return ret;

 return fujitsu_backlight_register(device);
}
