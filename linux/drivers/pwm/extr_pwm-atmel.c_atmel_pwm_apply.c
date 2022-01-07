
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pwm_state {scalar_t__ polarity; scalar_t__ period; scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct atmel_pwm_chip {int updated_pwms; int isr_lock; int clk; TYPE_2__* data; } ;
struct TYPE_3__ {int period; } ;
struct TYPE_4__ {TYPE_1__ regs; } ;


 int PWM_CMR ;
 int PWM_CMR_CPOL ;
 int PWM_CMR_CPRE_MSK ;
 int PWM_ENA ;
 int PWM_ISR ;
 scalar_t__ PWM_POLARITY_NORMAL ;
 int atmel_pwm_calculate_cdty (struct pwm_state const*,unsigned long,unsigned long*) ;
 int atmel_pwm_calculate_cprd_and_pres (struct pwm_chip*,struct pwm_state const*,unsigned long*,int*) ;
 void* atmel_pwm_ch_readl (struct atmel_pwm_chip*,int,int ) ;
 int atmel_pwm_ch_writel (struct atmel_pwm_chip*,int,int ,int) ;
 int atmel_pwm_disable (struct pwm_chip*,struct pwm_device*,int) ;
 int atmel_pwm_readl (struct atmel_pwm_chip*,int ) ;
 int atmel_pwm_set_cprd_cdty (struct pwm_chip*,struct pwm_device*,unsigned long,unsigned long) ;
 int atmel_pwm_update_cdty (struct pwm_chip*,struct pwm_device*,unsigned long) ;
 int atmel_pwm_writel (struct atmel_pwm_chip*,int ,int) ;
 int clk_enable (int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 struct atmel_pwm_chip* to_atmel_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int atmel_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
      const struct pwm_state *state)
{
 struct atmel_pwm_chip *atmel_pwm = to_atmel_pwm_chip(chip);
 struct pwm_state cstate;
 unsigned long cprd, cdty;
 u32 pres, val;
 int ret;

 pwm_get_state(pwm, &cstate);

 if (state->enabled) {
  if (cstate.enabled &&
      cstate.polarity == state->polarity &&
      cstate.period == state->period) {
   cprd = atmel_pwm_ch_readl(atmel_pwm, pwm->hwpwm,
        atmel_pwm->data->regs.period);
   atmel_pwm_calculate_cdty(state, cprd, &cdty);
   atmel_pwm_update_cdty(chip, pwm, cdty);
   return 0;
  }

  ret = atmel_pwm_calculate_cprd_and_pres(chip, state, &cprd,
       &pres);
  if (ret) {
   dev_err(chip->dev,
    "failed to calculate cprd and prescaler\n");
   return ret;
  }

  atmel_pwm_calculate_cdty(state, cprd, &cdty);

  if (cstate.enabled) {
   atmel_pwm_disable(chip, pwm, 0);
  } else {
   ret = clk_enable(atmel_pwm->clk);
   if (ret) {
    dev_err(chip->dev, "failed to enable clock\n");
    return ret;
   }
  }


  val = atmel_pwm_ch_readl(atmel_pwm, pwm->hwpwm, PWM_CMR);
  val = (val & ~PWM_CMR_CPRE_MSK) | (pres & PWM_CMR_CPRE_MSK);
  if (state->polarity == PWM_POLARITY_NORMAL)
   val &= ~PWM_CMR_CPOL;
  else
   val |= PWM_CMR_CPOL;
  atmel_pwm_ch_writel(atmel_pwm, pwm->hwpwm, PWM_CMR, val);
  atmel_pwm_set_cprd_cdty(chip, pwm, cprd, cdty);
  mutex_lock(&atmel_pwm->isr_lock);
  atmel_pwm->updated_pwms |= atmel_pwm_readl(atmel_pwm, PWM_ISR);
  atmel_pwm->updated_pwms &= ~(1 << pwm->hwpwm);
  mutex_unlock(&atmel_pwm->isr_lock);
  atmel_pwm_writel(atmel_pwm, PWM_ENA, 1 << pwm->hwpwm);
 } else if (cstate.enabled) {
  atmel_pwm_disable(chip, pwm, 1);
 }

 return 0;
}
