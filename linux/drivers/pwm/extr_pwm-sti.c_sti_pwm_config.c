
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_pwm_compat_data {int max_pwm_cnt; } ;
struct sti_pwm_chip {int cpt_clk; int pwm_clk; struct pwm_device* cur; int configured; int pwm_cpt_int_en; int regmap; int prescale_high; int prescale_low; struct device* dev; struct sti_pwm_compat_data* cdata; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int PWM_OUT_VAL (scalar_t__) ;
 unsigned int PWM_PRESCALE_HIGH_MASK ;
 unsigned int PWM_PRESCALE_LOW_MASK ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int dev_dbg (struct device*,char*,unsigned int,int,int,unsigned int) ;
 unsigned int hweight_long (int ) ;
 int pwm_get_period (struct pwm_device*) ;
 int regmap_field_write (int ,unsigned int) ;
 int regmap_write (int ,int ,unsigned int) ;
 int set_bit (scalar_t__,int *) ;
 int sti_pwm_get_prescale (struct sti_pwm_chip*,int,unsigned int*) ;
 struct sti_pwm_chip* to_sti_pwmchip (struct pwm_chip*) ;

__attribute__((used)) static int sti_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
     int duty_ns, int period_ns)
{
 struct sti_pwm_chip *pc = to_sti_pwmchip(chip);
 struct sti_pwm_compat_data *cdata = pc->cdata;
 unsigned int ncfg, value, prescale = 0;
 struct pwm_device *cur = pc->cur;
 struct device *dev = pc->dev;
 bool period_same = 0;
 int ret;

 ncfg = hweight_long(pc->configured);
 if (ncfg)
  period_same = (period_ns == pwm_get_period(cur));
 if (!ncfg ||
     ((ncfg == 1) && (pwm->hwpwm == cur->hwpwm)) ||
     ((ncfg == 1) && (pwm->hwpwm != cur->hwpwm) && period_same) ||
     ((ncfg > 1) && period_same)) {

  ret = clk_enable(pc->pwm_clk);
  if (ret)
   return ret;

  ret = clk_enable(pc->cpt_clk);
  if (ret)
   return ret;

  if (!period_same) {
   ret = sti_pwm_get_prescale(pc, period_ns, &prescale);
   if (ret)
    goto clk_dis;

   value = prescale & PWM_PRESCALE_LOW_MASK;

   ret = regmap_field_write(pc->prescale_low, value);
   if (ret)
    goto clk_dis;

   value = (prescale & PWM_PRESCALE_HIGH_MASK) >> 4;

   ret = regmap_field_write(pc->prescale_high, value);
   if (ret)
    goto clk_dis;
  }







  value = cdata->max_pwm_cnt * duty_ns / period_ns;

  ret = regmap_write(pc->regmap, PWM_OUT_VAL(pwm->hwpwm), value);
  if (ret)
   goto clk_dis;

  ret = regmap_field_write(pc->pwm_cpt_int_en, 0);

  set_bit(pwm->hwpwm, &pc->configured);
  pc->cur = pwm;

  dev_dbg(dev, "prescale:%u, period:%i, duty:%i, value:%u\n",
   prescale, period_ns, duty_ns, value);
 } else {
  return -EINVAL;
 }

clk_dis:
 clk_disable(pc->pwm_clk);
 clk_disable(pc->cpt_clk);
 return ret;
}
