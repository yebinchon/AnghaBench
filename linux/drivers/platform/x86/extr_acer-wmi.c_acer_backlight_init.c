
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_2__ {int brightness; int power; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BACKLIGHT_PLATFORM ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* acer_backlight_device ;
 int acer_bl_ops ;
 struct backlight_device* backlight_device_register (char*,struct device*,int *,int *,struct backlight_properties*) ;
 int backlight_update_status (struct backlight_device*) ;
 int max_brightness ;
 int memset (struct backlight_properties*,int ,int) ;
 int pr_err (char*) ;
 int read_brightness (struct backlight_device*) ;

__attribute__((used)) static int acer_backlight_init(struct device *dev)
{
 struct backlight_properties props;
 struct backlight_device *bd;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = max_brightness;
 bd = backlight_device_register("acer-wmi", dev, ((void*)0), &acer_bl_ops,
           &props);
 if (IS_ERR(bd)) {
  pr_err("Could not register Acer backlight device\n");
  acer_backlight_device = ((void*)0);
  return PTR_ERR(bd);
 }

 acer_backlight_device = bd;

 bd->props.power = FB_BLANK_UNBLANK;
 bd->props.brightness = read_brightness(bd);
 backlight_update_status(bd);
 return 0;
}
