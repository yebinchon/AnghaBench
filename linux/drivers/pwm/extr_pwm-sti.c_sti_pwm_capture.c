
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_pwm_compat_data {scalar_t__ cpt_num_devs; } ;
struct sti_pwm_chip {int pwm_cpt_en; int cpt_clk; int regmap; int pwm_cpt_int_en; struct device* dev; struct sti_pwm_compat_data* cdata; } ;
struct sti_cpt_ddata {int index; unsigned long long* snapshot; int lock; int wait; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct pwm_capture {unsigned long long period; unsigned long long duty_cycle; } ;
struct device {int dummy; } ;


 int BIT (scalar_t__) ;
 int CPT_EDGE_DISABLED ;
 int CPT_EDGE_RISING ;
 int EINVAL ;
 int ERESTARTSYS ;
 unsigned long long NSEC_PER_SEC ;
 int PWM_CPT_EDGE (scalar_t__) ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (struct device*,char*,...) ;
 int msecs_to_jiffies (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sti_cpt_ddata* pwm_get_chip_data (struct pwm_device*) ;
 int regmap_field_write (int ,int) ;
 int regmap_write (int ,int ,int ) ;
 struct sti_pwm_chip* to_sti_pwmchip (struct pwm_chip*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int sti_pwm_capture(struct pwm_chip *chip, struct pwm_device *pwm,
      struct pwm_capture *result, unsigned long timeout)
{
 struct sti_pwm_chip *pc = to_sti_pwmchip(chip);
 struct sti_pwm_compat_data *cdata = pc->cdata;
 struct sti_cpt_ddata *ddata = pwm_get_chip_data(pwm);
 struct device *dev = pc->dev;
 unsigned int effective_ticks;
 unsigned long long high, low;
 int ret;

 if (pwm->hwpwm >= cdata->cpt_num_devs) {
  dev_err(dev, "device %u is not valid\n", pwm->hwpwm);
  return -EINVAL;
 }

 mutex_lock(&ddata->lock);
 ddata->index = 0;


 regmap_write(pc->regmap, PWM_CPT_EDGE(pwm->hwpwm), CPT_EDGE_RISING);
 regmap_field_write(pc->pwm_cpt_int_en, BIT(pwm->hwpwm));


 ret = regmap_field_write(pc->pwm_cpt_en, 1);
 if (ret) {
  dev_err(dev, "failed to enable PWM capture %u: %d\n",
   pwm->hwpwm, ret);
  goto out;
 }

 ret = wait_event_interruptible_timeout(ddata->wait, ddata->index > 1,
            msecs_to_jiffies(timeout));

 regmap_write(pc->regmap, PWM_CPT_EDGE(pwm->hwpwm), CPT_EDGE_DISABLED);

 if (ret == -ERESTARTSYS)
  goto out;

 switch (ddata->index) {
 case 0:
 case 1:







  result->period = 0;
  result->duty_cycle = 0;

  break;

 case 2:

  high = ddata->snapshot[1] - ddata->snapshot[0];
  low = ddata->snapshot[2] - ddata->snapshot[1];

  effective_ticks = clk_get_rate(pc->cpt_clk);

  result->period = (high + low) * NSEC_PER_SEC;
  result->period /= effective_ticks;

  result->duty_cycle = high * NSEC_PER_SEC;
  result->duty_cycle /= effective_ticks;

  break;

 default:
  dev_err(dev, "internal error\n");
  break;
 }

out:

 regmap_field_write(pc->pwm_cpt_en, 0);

 mutex_unlock(&ddata->lock);
 return ret;
}
