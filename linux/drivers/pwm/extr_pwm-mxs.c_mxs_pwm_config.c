
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct mxs_pwm_chip {int clk; scalar_t__ base; } ;


 int EINVAL ;
 unsigned int PERIOD_ACTIVE_HIGH ;
 unsigned int PERIOD_CDIV (int) ;
 int PERIOD_CDIV_MAX ;
 unsigned int PERIOD_INACTIVE_LOW ;
 unsigned int PERIOD_PERIOD (unsigned int) ;
 unsigned long long PERIOD_PERIOD_MAX ;
 scalar_t__ PWM_ACTIVE0 ;
 scalar_t__ PWM_PERIOD0 ;
 unsigned long* cdiv ;
 int clk_disable_unprepare (int ) ;
 unsigned long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int do_div (unsigned long long,int) ;
 int pwm_is_enabled (struct pwm_device*) ;
 struct mxs_pwm_chip* to_mxs_pwm_chip (struct pwm_chip*) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int mxs_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
     int duty_ns, int period_ns)
{
 struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);
 int ret, div = 0;
 unsigned int period_cycles, duty_cycles;
 unsigned long rate;
 unsigned long long c;

 rate = clk_get_rate(mxs->clk);
 while (1) {
  c = rate / cdiv[div];
  c = c * period_ns;
  do_div(c, 1000000000);
  if (c < PERIOD_PERIOD_MAX)
   break;
  div++;
  if (div >= PERIOD_CDIV_MAX)
   return -EINVAL;
 }

 period_cycles = c;
 c *= duty_ns;
 do_div(c, period_ns);
 duty_cycles = c;





 if (!pwm_is_enabled(pwm)) {
  ret = clk_prepare_enable(mxs->clk);
  if (ret)
   return ret;
 }

 writel(duty_cycles << 16,
   mxs->base + PWM_ACTIVE0 + pwm->hwpwm * 0x20);
 writel(PERIOD_PERIOD(period_cycles) | PERIOD_ACTIVE_HIGH |
        PERIOD_INACTIVE_LOW | PERIOD_CDIV(div),
   mxs->base + PWM_PERIOD0 + pwm->hwpwm * 0x20);




 if (!pwm_is_enabled(pwm))
  clk_disable_unprepare(mxs->clk);

 return 0;
}
