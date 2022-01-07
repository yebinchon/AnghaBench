
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe_pwm {int stmpe; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;


 int BIT (int ) ;
 int STMPE24XX_PWMCS ;
 int dev_err (int ,char*,int ) ;
 int stmpe_reg_read (int ,int ) ;
 int stmpe_reg_write (int ,int ,int) ;
 struct stmpe_pwm* to_stmpe_pwm (struct pwm_chip*) ;

__attribute__((used)) static int stmpe_24xx_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct stmpe_pwm *stmpe_pwm = to_stmpe_pwm(chip);
 u8 value;
 int ret;

 ret = stmpe_reg_read(stmpe_pwm->stmpe, STMPE24XX_PWMCS);
 if (ret < 0) {
  dev_err(chip->dev, "error reading PWM#%u control\n",
   pwm->hwpwm);
  return ret;
 }

 value = ret | BIT(pwm->hwpwm);

 ret = stmpe_reg_write(stmpe_pwm->stmpe, STMPE24XX_PWMCS, value);
 if (ret) {
  dev_err(chip->dev, "error writing PWM#%u control\n",
   pwm->hwpwm);
  return ret;
 }

 return 0;
}
