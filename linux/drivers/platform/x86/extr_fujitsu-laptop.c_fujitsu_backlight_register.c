
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fujitsu_bl {struct backlight_device* bl_device; int max_brightness; int brightness_level; } ;
struct backlight_properties {int type; int max_brightness; int brightness; } ;
struct backlight_device {int dummy; } ;
struct acpi_device {int dev; } ;


 int BACKLIGHT_PLATFORM ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct fujitsu_bl* acpi_driver_data (struct acpi_device*) ;
 struct backlight_device* devm_backlight_device_register (int *,char*,int *,struct acpi_device*,int *,struct backlight_properties const*) ;
 int fujitsu_bl_ops ;

__attribute__((used)) static int fujitsu_backlight_register(struct acpi_device *device)
{
 struct fujitsu_bl *priv = acpi_driver_data(device);
 const struct backlight_properties props = {
  .brightness = priv->brightness_level,
  .max_brightness = priv->max_brightness - 1,
  .type = BACKLIGHT_PLATFORM
 };
 struct backlight_device *bd;

 bd = devm_backlight_device_register(&device->dev, "fujitsu-laptop",
         &device->dev, device,
         &fujitsu_bl_ops, &props);
 if (IS_ERR(bd))
  return PTR_ERR(bd);

 priv->bl_device = bd;

 return 0;
}
