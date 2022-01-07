
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ideapad_private {struct backlight_device* blightdev; TYPE_2__* platform_device; TYPE_1__* adev; } ;
struct backlight_properties {unsigned long max_brightness; int type; } ;
struct TYPE_6__ {unsigned long brightness; int power; } ;
struct backlight_device {TYPE_3__ props; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int handle; } ;


 int BACKLIGHT_PLATFORM ;
 int EIO ;
 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int PTR_ERR (struct backlight_device*) ;
 int VPCCMD_R_BL ;
 int VPCCMD_R_BL_MAX ;
 int VPCCMD_R_BL_POWER ;
 struct backlight_device* backlight_device_register (char*,int *,struct ideapad_private*,int *,struct backlight_properties*) ;
 int backlight_update_status (struct backlight_device*) ;
 int ideapad_backlight_ops ;
 int memset (struct backlight_properties*,int ,int) ;
 int pr_err (char*) ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static int ideapad_backlight_init(struct ideapad_private *priv)
{
 struct backlight_device *blightdev;
 struct backlight_properties props;
 unsigned long max, now, power;

 if (read_ec_data(priv->adev->handle, VPCCMD_R_BL_MAX, &max))
  return -EIO;
 if (read_ec_data(priv->adev->handle, VPCCMD_R_BL, &now))
  return -EIO;
 if (read_ec_data(priv->adev->handle, VPCCMD_R_BL_POWER, &power))
  return -EIO;

 memset(&props, 0, sizeof(struct backlight_properties));
 props.max_brightness = max;
 props.type = BACKLIGHT_PLATFORM;
 blightdev = backlight_device_register("ideapad",
           &priv->platform_device->dev,
           priv,
           &ideapad_backlight_ops,
           &props);
 if (IS_ERR(blightdev)) {
  pr_err("Could not register backlight device\n");
  return PTR_ERR(blightdev);
 }

 priv->blightdev = blightdev;
 blightdev->props.brightness = now;
 blightdev->props.power = power ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
 backlight_update_status(blightdev);

 return 0;
}
