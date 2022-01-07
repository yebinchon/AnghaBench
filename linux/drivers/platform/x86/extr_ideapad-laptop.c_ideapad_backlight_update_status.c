
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct TYPE_4__ {int brightness; scalar_t__ power; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {int handle; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ FB_BLANK_POWERDOWN ;
 int VPCCMD_W_BL ;
 int VPCCMD_W_BL_POWER ;
 struct ideapad_private* bl_get_data (struct backlight_device*) ;
 scalar_t__ write_ec_cmd (int ,int ,int) ;

__attribute__((used)) static int ideapad_backlight_update_status(struct backlight_device *blightdev)
{
 struct ideapad_private *priv = bl_get_data(blightdev);

 if (!priv)
  return -EINVAL;

 if (write_ec_cmd(priv->adev->handle, VPCCMD_W_BL,
    blightdev->props.brightness))
  return -EIO;
 if (write_ec_cmd(priv->adev->handle, VPCCMD_W_BL_POWER,
    blightdev->props.power == FB_BLANK_POWERDOWN ? 0 : 1))
  return -EIO;

 return 0;
}
