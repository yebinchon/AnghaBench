
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pwm_state {unsigned long period; unsigned long long duty_cycle; int enabled; int polarity; } ;
struct pwm_lpss_chip {TYPE_1__* info; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;
struct TYPE_2__ {unsigned long long clk_rate; int base_unit_bits; } ;


 unsigned long BIT (int ) ;
 unsigned long NSEC_PER_SEC ;
 int PWM_BASE_UNIT_SHIFT ;
 int PWM_ENABLE ;
 int PWM_ON_TIME_DIV_MASK ;
 int PWM_POLARITY_NORMAL ;
 int do_div (unsigned long long,int) ;
 int pm_runtime_get (int ) ;
 int pwm_lpss_read (struct pwm_device*) ;
 struct pwm_lpss_chip* to_lpwm (struct pwm_chip*) ;

__attribute__((used)) static void pwm_lpss_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
          struct pwm_state *state)
{
 struct pwm_lpss_chip *lpwm = to_lpwm(chip);
 unsigned long base_unit_range;
 unsigned long long base_unit, freq, on_time_div;
 u32 ctrl;

 base_unit_range = BIT(lpwm->info->base_unit_bits);

 ctrl = pwm_lpss_read(pwm);
 on_time_div = 255 - (ctrl & PWM_ON_TIME_DIV_MASK);
 base_unit = (ctrl >> PWM_BASE_UNIT_SHIFT) & (base_unit_range - 1);

 freq = base_unit * lpwm->info->clk_rate;
 do_div(freq, base_unit_range);
 if (freq == 0)
  state->period = NSEC_PER_SEC;
 else
  state->period = NSEC_PER_SEC / (unsigned long)freq;

 on_time_div *= state->period;
 do_div(on_time_div, 255);
 state->duty_cycle = on_time_div;

 state->polarity = PWM_POLARITY_NORMAL;
 state->enabled = !!(ctrl & PWM_ENABLE);

 if (state->enabled)
  pm_runtime_get(chip->dev);
}
