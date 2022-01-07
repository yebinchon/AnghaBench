
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct puv3_pwm_chip {int clk; scalar_t__ base; } ;


 int EINVAL ;
 unsigned long OST_PWMDCCR_FDCYCLE ;
 scalar_t__ OST_PWM_DCCR ;
 scalar_t__ OST_PWM_PCR ;
 scalar_t__ OST_PWM_PWCR ;
 int clk_disable_unprepare (int ) ;
 unsigned long long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int do_div (unsigned long long,int) ;
 struct puv3_pwm_chip* to_puv3 (struct pwm_chip*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int puv3_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
      int duty_ns, int period_ns)
{
 unsigned long period_cycles, prescale, pv, dc;
 struct puv3_pwm_chip *puv3 = to_puv3(chip);
 unsigned long long c;

 c = clk_get_rate(puv3->clk);
 c = c * period_ns;
 do_div(c, 1000000000);
 period_cycles = c;

 if (period_cycles < 1)
  period_cycles = 1;

 prescale = (period_cycles - 1) / 1024;
 pv = period_cycles / (prescale + 1) - 1;

 if (prescale > 63)
  return -EINVAL;

 if (duty_ns == period_ns)
  dc = OST_PWMDCCR_FDCYCLE;
 else
  dc = (pv + 1) * duty_ns / period_ns;





 clk_prepare_enable(puv3->clk);

 writel(prescale, puv3->base + OST_PWM_PWCR);
 writel(pv - dc, puv3->base + OST_PWM_DCCR);
 writel(pv, puv3->base + OST_PWM_PCR);

 clk_disable_unprepare(puv3->clk);

 return 0;
}
