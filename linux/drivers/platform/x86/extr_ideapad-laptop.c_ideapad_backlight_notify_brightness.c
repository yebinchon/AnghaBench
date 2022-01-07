
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ideapad_private {int * blightdev; TYPE_1__* adev; } ;
struct TYPE_2__ {int handle; } ;


 int BACKLIGHT_UPDATE_HOTKEY ;
 int VPCCMD_R_BL ;
 int backlight_force_update (int *,int ) ;
 int read_ec_data (int ,int ,unsigned long*) ;

__attribute__((used)) static void ideapad_backlight_notify_brightness(struct ideapad_private *priv)
{
 unsigned long now;


 if (priv->blightdev == ((void*)0)) {
  read_ec_data(priv->adev->handle, VPCCMD_R_BL, &now);
  return;
 }

 backlight_force_update(priv->blightdev, BACKLIGHT_UPDATE_HOTKEY);
}
