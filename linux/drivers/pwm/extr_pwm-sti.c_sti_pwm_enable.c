
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_pwm_chip {int sti_pwm_lock; int en_count; int pwm_out_en; int cpt_clk; int pwm_clk; struct device* dev; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct device {int dummy; } ;


 int clk_enable (int ) ;
 int dev_err (struct device*,char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_field_write (int ,int) ;
 struct sti_pwm_chip* to_sti_pwmchip (struct pwm_chip*) ;

__attribute__((used)) static int sti_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct sti_pwm_chip *pc = to_sti_pwmchip(chip);
 struct device *dev = pc->dev;
 int ret = 0;





 mutex_lock(&pc->sti_pwm_lock);

 if (!pc->en_count) {
  ret = clk_enable(pc->pwm_clk);
  if (ret)
   goto out;

  ret = clk_enable(pc->cpt_clk);
  if (ret)
   goto out;

  ret = regmap_field_write(pc->pwm_out_en, 1);
  if (ret) {
   dev_err(dev, "failed to enable PWM device %u: %d\n",
    pwm->hwpwm, ret);
   goto out;
  }
 }

 pc->en_count++;

out:
 mutex_unlock(&pc->sti_pwm_lock);
 return ret;
}
