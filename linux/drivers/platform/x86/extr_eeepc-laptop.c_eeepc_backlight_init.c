
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct eeepc_laptop {struct backlight_device* backlight_device; TYPE_1__* platform_device; } ;
struct backlight_properties {int max_brightness; int type; } ;
struct TYPE_4__ {int power; int brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {int dev; } ;


 int BACKLIGHT_PLATFORM ;
 int EEEPC_LAPTOP_FILE ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (int ,int *,struct eeepc_laptop*,int *,struct backlight_properties*) ;
 int backlight_update_status (struct backlight_device*) ;
 int eeepcbl_ops ;
 int memset (struct backlight_properties*,int ,int) ;
 int pr_err (char*) ;
 int read_brightness (struct backlight_device*) ;

__attribute__((used)) static int eeepc_backlight_init(struct eeepc_laptop *eeepc)
{
 struct backlight_properties props;
 struct backlight_device *bd;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.type = BACKLIGHT_PLATFORM;
 props.max_brightness = 15;
 bd = backlight_device_register(EEEPC_LAPTOP_FILE,
           &eeepc->platform_device->dev, eeepc,
           &eeepcbl_ops, &props);
 if (IS_ERR(bd)) {
  pr_err("Could not register eeepc backlight device\n");
  eeepc->backlight_device = ((void*)0);
  return PTR_ERR(bd);
 }
 eeepc->backlight_device = bd;
 bd->props.brightness = read_brightness(bd);
 bd->props.power = FB_BLANK_UNBLANK;
 backlight_update_status(bd);
 return 0;
}
