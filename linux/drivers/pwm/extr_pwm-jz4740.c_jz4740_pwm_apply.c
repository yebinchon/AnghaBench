
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pwm_state {unsigned long long period; unsigned long long duty_cycle; int polarity; scalar_t__ enabled; } ;
struct pwm_device {int hwpwm; int chip; } ;
struct pwm_chip {int dummy; } ;
struct jz4740_pwm_chip {int clk; } ;


 int EINVAL ;
 int JZ_TIMER_CTRL_PRESCALER (unsigned int) ;
 int JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN ;
 int JZ_TIMER_CTRL_PWM_ACTIVE_LOW ;
 int JZ_TIMER_CTRL_SRC_EXT ;


 scalar_t__ clk_get_rate (int ) ;
 int do_div (unsigned long long,int) ;
 int jz4740_pwm_disable (struct pwm_chip*,struct pwm_device*) ;
 int jz4740_pwm_enable (struct pwm_chip*,struct pwm_device*) ;
 int jz4740_timer_set_count (int ,int ) ;
 int jz4740_timer_set_ctrl (int ,int) ;
 int jz4740_timer_set_duty (int ,unsigned long) ;
 int jz4740_timer_set_period (int ,unsigned long) ;
 struct jz4740_pwm_chip* to_jz4740 (int ) ;

__attribute__((used)) static int jz4740_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
       const struct pwm_state *state)
{
 struct jz4740_pwm_chip *jz4740 = to_jz4740(pwm->chip);
 unsigned long long tmp;
 unsigned long period, duty;
 unsigned int prescaler = 0;
 uint16_t ctrl;

 tmp = (unsigned long long)clk_get_rate(jz4740->clk) * state->period;
 do_div(tmp, 1000000000);
 period = tmp;

 while (period > 0xffff && prescaler < 6) {
  period >>= 2;
  ++prescaler;
 }

 if (prescaler == 6)
  return -EINVAL;

 tmp = (unsigned long long)period * state->duty_cycle;
 do_div(tmp, state->period);
 duty = period - tmp;

 if (duty >= period)
  duty = period - 1;

 jz4740_pwm_disable(chip, pwm);

 jz4740_timer_set_count(pwm->hwpwm, 0);
 jz4740_timer_set_duty(pwm->hwpwm, duty);
 jz4740_timer_set_period(pwm->hwpwm, period);

 ctrl = JZ_TIMER_CTRL_PRESCALER(prescaler) | JZ_TIMER_CTRL_SRC_EXT |
  JZ_TIMER_CTRL_PWM_ABBRUPT_SHUTDOWN;

 jz4740_timer_set_ctrl(pwm->hwpwm, ctrl);

 switch (state->polarity) {
 case 128:
  ctrl &= ~JZ_TIMER_CTRL_PWM_ACTIVE_LOW;
  break;
 case 129:
  ctrl |= JZ_TIMER_CTRL_PWM_ACTIVE_LOW;
  break;
 }

 jz4740_timer_set_ctrl(pwm->hwpwm, ctrl);

 if (state->enabled)
  jz4740_pwm_enable(chip, pwm);

 return 0;
}
