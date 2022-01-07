
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_3__ {int power; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;
struct TYPE_4__ {int dev; } ;


 int BACKLIGHT_PLATFORM ;
 int DRIVER_NAME ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int OT_EC_BL_BRIGHTNESS_MAX ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (int ,int *,int *,int *,struct backlight_properties*) ;
 int backlight_update_status (struct backlight_device*) ;
 int get_backlight_brightness (struct backlight_device*) ;
 int memset (struct backlight_properties*,int ,int) ;
 struct backlight_device* oaktrail_bl_device ;
 int oaktrail_bl_ops ;
 TYPE_2__* oaktrail_device ;
 int pr_warning (char*) ;

__attribute__((used)) static int oaktrail_backlight_init(void)
{
 struct backlight_device *bd;
 struct backlight_properties props;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = OT_EC_BL_BRIGHTNESS_MAX;
 bd = backlight_device_register(DRIVER_NAME,
           &oaktrail_device->dev, ((void*)0),
           &oaktrail_bl_ops,
           &props);

 if (IS_ERR(bd)) {
  oaktrail_bl_device = ((void*)0);
  pr_warning("Unable to register backlight device\n");
  return PTR_ERR(bd);
 }

 oaktrail_bl_device = bd;

 bd->props.brightness = get_backlight_brightness(bd);
 bd->props.power = FB_BLANK_UNBLANK;
 backlight_update_status(bd);

 return 0;
}
