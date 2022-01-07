
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_4__ {int power; int brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
struct asus_laptop {struct backlight_device* backlight_device; TYPE_1__* platform_device; int handle; } ;
struct TYPE_3__ {int dev; } ;


 int ASUS_LAPTOP_FILE ;
 int BACKLIGHT_PLATFORM ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int METHOD_BRIGHTNESS_GET ;
 int METHOD_BRIGHTNESS_SET ;
 int PTR_ERR (struct backlight_device*) ;
 scalar_t__ acpi_check_handle (int ,int ,int *) ;
 int asus_read_brightness (struct backlight_device*) ;
 int asusbl_ops ;
 struct backlight_device* backlight_device_register (int ,int *,struct asus_laptop*,int *,struct backlight_properties*) ;
 int backlight_update_status (struct backlight_device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int asus_backlight_init(struct asus_laptop *asus)
{
 struct backlight_device *bd;
 struct backlight_properties props;

 if (acpi_check_handle(asus->handle, METHOD_BRIGHTNESS_GET, ((void*)0)) ||
     acpi_check_handle(asus->handle, METHOD_BRIGHTNESS_SET, ((void*)0)))
  return 0;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.max_brightness = 15;
 props.type = BACKLIGHT_PLATFORM;

 bd = backlight_device_register(ASUS_LAPTOP_FILE,
           &asus->platform_device->dev, asus,
           &asusbl_ops, &props);
 if (IS_ERR(bd)) {
  pr_err("Could not register asus backlight device\n");
  asus->backlight_device = ((void*)0);
  return PTR_ERR(bd);
 }

 asus->backlight_device = bd;
 bd->props.brightness = asus_read_brightness(bd);
 bd->props.power = FB_BLANK_UNBLANK;
 backlight_update_status(bd);
 return 0;
}
