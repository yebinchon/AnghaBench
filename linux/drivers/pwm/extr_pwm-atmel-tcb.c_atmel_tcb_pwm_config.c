
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct atmel_tcb_pwm_device {scalar_t__ duty; scalar_t__ period; int div; } ;
struct atmel_tcb_pwm_chip {struct atmel_tcb_pwm_device** pwms; struct atmel_tc* tc; } ;
struct atmel_tc {TYPE_1__* tcb_config; int slow_clk; int * clk; } ;
struct TYPE_2__ {unsigned long long counter_width; } ;


 int EINVAL ;
 int ERANGE ;
 int NSEC_PER_SEC ;
 int* atmel_tc_divisors ;
 int atmel_tcb_pwm_enable (struct pwm_chip*,struct pwm_device*) ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (int ,char*) ;
 void* div_u64 (int,unsigned long long) ;
 struct atmel_tcb_pwm_device* pwm_get_chip_data (struct pwm_device*) ;
 scalar_t__ pwm_is_enabled (struct pwm_device*) ;
 struct atmel_tcb_pwm_chip* to_tcb_chip (struct pwm_chip*) ;

__attribute__((used)) static int atmel_tcb_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
    int duty_ns, int period_ns)
{
 struct atmel_tcb_pwm_chip *tcbpwmc = to_tcb_chip(chip);
 struct atmel_tcb_pwm_device *tcbpwm = pwm_get_chip_data(pwm);
 unsigned group = pwm->hwpwm / 2;
 unsigned index = pwm->hwpwm % 2;
 struct atmel_tcb_pwm_device *atcbpwm = ((void*)0);
 struct atmel_tc *tc = tcbpwmc->tc;
 int i;
 int slowclk = 0;
 unsigned period;
 unsigned duty;
 unsigned rate = clk_get_rate(tc->clk[group]);
 unsigned long long min;
 unsigned long long max;





 for (i = 0; i < 5; ++i) {
  if (atmel_tc_divisors[i] == 0) {
   slowclk = i;
   continue;
  }
  min = div_u64((u64)NSEC_PER_SEC * atmel_tc_divisors[i], rate);
  max = min << tc->tcb_config->counter_width;
  if (max >= period_ns)
   break;
 }





 if (i == 5) {
  i = slowclk;
  rate = clk_get_rate(tc->slow_clk);
  min = div_u64(NSEC_PER_SEC, rate);
  max = min << tc->tcb_config->counter_width;


  if (max < period_ns)
   return -ERANGE;
 }

 duty = div_u64(duty_ns, min);
 period = div_u64(period_ns, min);

 if (index == 0)
  atcbpwm = tcbpwmc->pwms[pwm->hwpwm + 1];
 else
  atcbpwm = tcbpwmc->pwms[pwm->hwpwm - 1];
 if ((atcbpwm && atcbpwm->duty > 0 &&
   atcbpwm->duty != atcbpwm->period) &&
  (atcbpwm->div != i || atcbpwm->period != period)) {
  dev_err(chip->dev,
   "failed to configure period_ns: PWM group already configured with a different value\n");
  return -EINVAL;
 }

 tcbpwm->period = period;
 tcbpwm->div = i;
 tcbpwm->duty = duty;


 if (pwm_is_enabled(pwm))
  atmel_tcb_pwm_enable(chip, pwm);

 return 0;
}
