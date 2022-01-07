
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm3630a_chip {int dev; TYPE_1__* pdata; } ;
struct TYPE_4__ {int brightness; } ;
struct backlight_device {TYPE_2__ props; } ;
typedef enum lm3630a_pwm_ctrl { ____Placeholder_lm3630a_pwm_ctrl } lm3630a_pwm_ctrl ;
struct TYPE_3__ {int pwm_ctrl; } ;


 int LM3630A_PWM_BANK_B ;
 int REG_BRT_B ;
 int REG_CTRL ;
 int REG_PWM_OUTHIGH ;
 int REG_PWM_OUTLOW ;
 struct lm3630a_chip* bl_get_data (struct backlight_device*) ;
 int dev_err (int ,char*) ;
 int lm3630a_read (struct lm3630a_chip*,int ) ;
 int lm3630a_update (struct lm3630a_chip*,int ,int,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lm3630a_bank_b_get_brightness(struct backlight_device *bl)
{
 int brightness, rval;
 struct lm3630a_chip *pchip = bl_get_data(bl);
 enum lm3630a_pwm_ctrl pwm_ctrl = pchip->pdata->pwm_ctrl;

 if ((pwm_ctrl & LM3630A_PWM_BANK_B) != 0) {
  rval = lm3630a_read(pchip, REG_PWM_OUTHIGH);
  if (rval < 0)
   goto out_i2c_err;
  brightness = (rval & 0x01) << 8;
  rval = lm3630a_read(pchip, REG_PWM_OUTLOW);
  if (rval < 0)
   goto out_i2c_err;
  brightness |= rval;
  goto out;
 }


 rval = lm3630a_update(pchip, REG_CTRL, 0x80, 0x00);
 if (rval < 0)
  goto out_i2c_err;
 usleep_range(1000, 2000);
 rval = lm3630a_read(pchip, REG_BRT_B);
 if (rval < 0)
  goto out_i2c_err;
 brightness = rval;

out:
 bl->props.brightness = brightness;
 return bl->props.brightness;
out_i2c_err:
 dev_err(pchip->dev, "i2c failed to access register\n");
 return 0;
}
