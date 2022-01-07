
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pwm_state {int period; int duty_cycle; scalar_t__ polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_args {int period; scalar_t__ polarity; } ;


 int do_div (int,int) ;
 int pwm_apply_state (struct pwm_device*,struct pwm_state*) ;
 int pwm_get_args (struct pwm_device*,struct pwm_args*) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;

int pwm_adjust_config(struct pwm_device *pwm)
{
 struct pwm_state state;
 struct pwm_args pargs;

 pwm_get_args(pwm, &pargs);
 pwm_get_state(pwm, &state);
 if (!state.period) {
  state.duty_cycle = 0;
  state.period = pargs.period;
  state.polarity = pargs.polarity;

  return pwm_apply_state(pwm, &state);
 }





 if (pargs.period != state.period) {
  u64 dutycycle = (u64)state.duty_cycle * pargs.period;

  do_div(dutycycle, state.period);
  state.duty_cycle = dutycycle;
  state.period = pargs.period;
 }




 if (pargs.polarity != state.polarity) {
  state.polarity = pargs.polarity;
  state.duty_cycle = state.period - state.duty_cycle;
 }

 return pwm_apply_state(pwm, &state);
}
