
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {TYPE_1__* adev; } ;
struct backlight_device {int dummy; } ;
struct TYPE_2__ {int handle; } ;


 int EINVAL ;
 int EIO ;
 int VPCCMD_R_BL ;
 struct ideapad_private* bl_get_data (struct backlight_device*) ;
 scalar_t__ read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static int ideapad_backlight_get_brightness(struct backlight_device *blightdev)
{
 struct ideapad_private *priv = bl_get_data(blightdev);
 unsigned long now;

 if (!priv)
  return -EINVAL;

 if (read_ec_data(priv->adev->handle, VPCCMD_R_BL, &now))
  return -EIO;
 return now;
}
