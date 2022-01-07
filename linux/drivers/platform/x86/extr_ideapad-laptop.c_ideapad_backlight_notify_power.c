
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; struct backlight_device* blightdev; } ;
struct TYPE_4__ {int power; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {int handle; } ;


 int FB_BLANK_POWERDOWN ;
 int FB_BLANK_UNBLANK ;
 int VPCCMD_R_BL_POWER ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static void ideapad_backlight_notify_power(struct ideapad_private *priv)
{
 unsigned long power;
 struct backlight_device *blightdev = priv->blightdev;

 if (!blightdev)
  return;
 if (read_ec_data(priv->adev->handle, VPCCMD_R_BL_POWER, &power))
  return;
 blightdev->props.power = power ? FB_BLANK_UNBLANK : FB_BLANK_POWERDOWN;
}
