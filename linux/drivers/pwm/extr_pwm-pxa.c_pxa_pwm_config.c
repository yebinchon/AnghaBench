
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_pwm_chip {int clk; scalar_t__ mmio_base; } ;
struct pwm_device {scalar_t__ hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int EINVAL ;
 scalar_t__ PWMCR ;
 scalar_t__ PWMDCR ;
 unsigned long PWMDCR_FD ;
 scalar_t__ PWMPCR ;
 int clk_disable_unprepare (int ) ;
 unsigned long long clk_get_rate (int ) ;
 int clk_prepare_enable (int ) ;
 int do_div (unsigned long long,int) ;
 struct pxa_pwm_chip* to_pxa_pwm_chip (struct pwm_chip*) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static int pxa_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
     int duty_ns, int period_ns)
{
 struct pxa_pwm_chip *pc = to_pxa_pwm_chip(chip);
 unsigned long long c;
 unsigned long period_cycles, prescale, pv, dc;
 unsigned long offset;
 int rc;

 offset = pwm->hwpwm ? 0x10 : 0;

 c = clk_get_rate(pc->clk);
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
  dc = PWMDCR_FD;
 else
  dc = (pv + 1) * duty_ns / period_ns;




 rc = clk_prepare_enable(pc->clk);
 if (rc < 0)
  return rc;

 writel(prescale, pc->mmio_base + offset + PWMCR);
 writel(dc, pc->mmio_base + offset + PWMDCR);
 writel(pv, pc->mmio_base + offset + PWMPCR);

 clk_disable_unprepare(pc->clk);
 return 0;
}
