
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_pwm {int dummy; } ;
struct pwm_state {scalar_t__ enabled; int period; int duty_cycle; int polarity; } ;
struct TYPE_2__ {int enabled; int polarity; } ;
struct pwm_device {int hwpwm; TYPE_1__ state; } ;
struct pwm_chip {int dummy; } ;


 int stm32_pwm_config (struct stm32_pwm*,int ,int ,int ) ;
 int stm32_pwm_disable (struct stm32_pwm*,int ) ;
 int stm32_pwm_enable (struct stm32_pwm*,int ) ;
 int stm32_pwm_set_polarity (struct stm32_pwm*,int ,int ) ;
 struct stm32_pwm* to_stm32_pwm_dev (struct pwm_chip*) ;

__attribute__((used)) static int stm32_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
      const struct pwm_state *state)
{
 bool enabled;
 struct stm32_pwm *priv = to_stm32_pwm_dev(chip);
 int ret;

 enabled = pwm->state.enabled;

 if (enabled && !state->enabled) {
  stm32_pwm_disable(priv, pwm->hwpwm);
  return 0;
 }

 if (state->polarity != pwm->state.polarity)
  stm32_pwm_set_polarity(priv, pwm->hwpwm, state->polarity);

 ret = stm32_pwm_config(priv, pwm->hwpwm,
          state->duty_cycle, state->period);
 if (ret)
  return ret;

 if (!enabled && state->enabled)
  ret = stm32_pwm_enable(priv, pwm->hwpwm);

 return ret;
}
