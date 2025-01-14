
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_pwm_chip {int wclk; } ;
struct pwm_state {scalar_t__ polarity; scalar_t__ period; scalar_t__ duty_cycle; scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 scalar_t__ PWM_POLARITY_INVERSED ;
 int ZX_PWM_EN ;
 int ZX_PWM_MODE ;
 int ZX_PWM_POLAR ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 struct zx_pwm_chip* to_zx_pwm_chip (struct pwm_chip*) ;
 int zx_pwm_config (struct pwm_chip*,struct pwm_device*,scalar_t__,scalar_t__) ;
 int zx_pwm_set_mask (struct zx_pwm_chip*,int ,int ,int ,int ) ;

__attribute__((used)) static int zx_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
   const struct pwm_state *state)
{
 struct zx_pwm_chip *zpc = to_zx_pwm_chip(chip);
 struct pwm_state cstate;
 int ret;

 pwm_get_state(pwm, &cstate);

 if (state->polarity != cstate.polarity)
  zx_pwm_set_mask(zpc, pwm->hwpwm, ZX_PWM_MODE, ZX_PWM_POLAR,
    (state->polarity == PWM_POLARITY_INVERSED) ?
     0 : ZX_PWM_POLAR);

 if (state->period != cstate.period ||
     state->duty_cycle != cstate.duty_cycle) {
  ret = zx_pwm_config(chip, pwm, state->duty_cycle,
        state->period);
  if (ret)
   return ret;
 }

 if (state->enabled != cstate.enabled) {
  if (state->enabled) {
   ret = clk_prepare_enable(zpc->wclk);
   if (ret)
    return ret;

   zx_pwm_set_mask(zpc, pwm->hwpwm, ZX_PWM_MODE,
     ZX_PWM_EN, ZX_PWM_EN);
  } else {
   zx_pwm_set_mask(zpc, pwm->hwpwm, ZX_PWM_MODE,
     ZX_PWM_EN, 0);
   clk_disable_unprepare(zpc->wclk);
  }
 }

 return 0;
}
