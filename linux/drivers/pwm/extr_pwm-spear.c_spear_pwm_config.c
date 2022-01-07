
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spear_pwm_chip {int clk; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int EINVAL ;
 int PWMCR ;
 unsigned long PWMCR_MAX_PRESCALE ;
 unsigned long PWMCR_MIN_PRESCALE ;
 unsigned long PWMCR_PRESCALE_SHIFT ;
 int PWMDCR ;
 unsigned long PWMDCR_MAX_DUTY ;
 unsigned long PWMDCR_MIN_DUTY ;
 int PWMPCR ;
 unsigned long PWMPCR_MAX_PERIOD ;
 unsigned long PWMPCR_MIN_PERIOD ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_rate (int ) ;
 unsigned long div64_u64 (int,int) ;
 int spear_pwm_writel (struct spear_pwm_chip*,int ,int ,unsigned long) ;
 struct spear_pwm_chip* to_spear_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int spear_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
       int duty_ns, int period_ns)
{
 struct spear_pwm_chip *pc = to_spear_pwm_chip(chip);
 u64 val, div, clk_rate;
 unsigned long prescale = PWMCR_MIN_PRESCALE, pv, dc;
 int ret;
 clk_rate = clk_get_rate(pc->clk);
 while (1) {
  div = 1000000000;
  div *= 1 + prescale;
  val = clk_rate * period_ns;
  pv = div64_u64(val, div);
  val = clk_rate * duty_ns;
  dc = div64_u64(val, div);


  if (pv < PWMPCR_MIN_PERIOD || dc < PWMDCR_MIN_DUTY)
   return -EINVAL;





  if (pv > PWMPCR_MAX_PERIOD || dc > PWMDCR_MAX_DUTY) {
   if (++prescale > PWMCR_MAX_PRESCALE)
    return -EINVAL;
   continue;
  }
  break;
 }





 ret = clk_enable(pc->clk);
 if (ret)
  return ret;

 spear_pwm_writel(pc, pwm->hwpwm, PWMCR,
   prescale << PWMCR_PRESCALE_SHIFT);
 spear_pwm_writel(pc, pwm->hwpwm, PWMDCR, dc);
 spear_pwm_writel(pc, pwm->hwpwm, PWMPCR, pv);
 clk_disable(pc->clk);

 return 0;
}
