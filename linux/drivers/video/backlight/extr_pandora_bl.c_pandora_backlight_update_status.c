
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pandora_private {scalar_t__ old_state; } ;
struct TYPE_2__ {int brightness; scalar_t__ power; int state; } ;
struct backlight_device {TYPE_1__ props; } ;


 int BL_CORE_FBBLANK ;
 int BL_CORE_SUSPENDED ;
 scalar_t__ FB_BLANK_UNBLANK ;
 unsigned int MAX_USER_VALUE ;
 int MAX_VALUE ;
 int MIN_VALUE ;
 scalar_t__ PANDORABL_WAS_OFF ;
 int PWM0_CLK_ENABLE ;
 int PWM0_ENABLE ;
 int TWL4030_MODULE_INTBR ;
 int TWL_INTBR_GPBR1 ;
 int TWL_MODULE_PWM ;
 int TWL_PWM0_OFF ;
 struct pandora_private* bl_get_data (struct backlight_device*) ;
 int twl_i2c_read_u8 (int ,int*,int ) ;
 int twl_i2c_write_u8 (int ,int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pandora_backlight_update_status(struct backlight_device *bl)
{
 int brightness = bl->props.brightness;
 struct pandora_private *priv = bl_get_data(bl);
 u8 r;

 if (bl->props.power != FB_BLANK_UNBLANK)
  brightness = 0;
 if (bl->props.state & BL_CORE_FBBLANK)
  brightness = 0;
 if (bl->props.state & BL_CORE_SUSPENDED)
  brightness = 0;

 if ((unsigned int)brightness > MAX_USER_VALUE)
  brightness = MAX_USER_VALUE;

 if (brightness == 0) {
  if (priv->old_state == PANDORABL_WAS_OFF)
   goto done;


  twl_i2c_read_u8(TWL4030_MODULE_INTBR, &r, TWL_INTBR_GPBR1);
  r &= ~PWM0_ENABLE;
  twl_i2c_write_u8(TWL4030_MODULE_INTBR, r, TWL_INTBR_GPBR1);
  r &= ~PWM0_CLK_ENABLE;
  twl_i2c_write_u8(TWL4030_MODULE_INTBR, r, TWL_INTBR_GPBR1);

  goto done;
 }

 if (priv->old_state == PANDORABL_WAS_OFF) {




  twl_i2c_write_u8(TWL_MODULE_PWM, MAX_VALUE, TWL_PWM0_OFF);


  twl_i2c_read_u8(TWL4030_MODULE_INTBR, &r, TWL_INTBR_GPBR1);
  r &= ~PWM0_ENABLE;
  r |= PWM0_CLK_ENABLE;
  twl_i2c_write_u8(TWL4030_MODULE_INTBR, r, TWL_INTBR_GPBR1);
  r |= PWM0_ENABLE;
  twl_i2c_write_u8(TWL4030_MODULE_INTBR, r, TWL_INTBR_GPBR1);






  usleep_range(2000, 10000);
 }

 twl_i2c_write_u8(TWL_MODULE_PWM, MIN_VALUE + brightness, TWL_PWM0_OFF);

done:
 if (brightness != 0)
  priv->old_state = 0;
 else
  priv->old_state = PANDORABL_WAS_OFF;

 return 0;
}
