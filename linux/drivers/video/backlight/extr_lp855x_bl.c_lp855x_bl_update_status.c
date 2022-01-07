
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct lp855x {scalar_t__ mode; TYPE_1__* cfg; } ;
struct TYPE_4__ {int brightness; int state; int max_brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
struct TYPE_3__ {int reg_brightness; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ PWM_BASED ;
 scalar_t__ REGISTER_BASED ;
 struct lp855x* bl_get_data (struct backlight_device*) ;
 int lp855x_pwm_ctrl (struct lp855x*,int,int ) ;
 int lp855x_write_byte (struct lp855x*,int ,int ) ;

__attribute__((used)) static int lp855x_bl_update_status(struct backlight_device *bl)
{
 struct lp855x *lp = bl_get_data(bl);
 int brightness = bl->props.brightness;

 if (bl->props.state & (BL_CORE_SUSPENDED | BL_CORE_FBBLANK))
  brightness = 0;

 if (lp->mode == PWM_BASED)
  lp855x_pwm_ctrl(lp, brightness, bl->props.max_brightness);
 else if (lp->mode == REGISTER_BASED)
  lp855x_write_byte(lp, lp->cfg->reg_brightness, (u8)brightness);

 return 0;
}
