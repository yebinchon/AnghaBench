
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct tegra_pwm_chip {int clk_rate; int clk; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 void* DIV_ROUND_CLOSEST_ULL (unsigned long long,unsigned long long) ;
 int EINVAL ;
 unsigned long long NSEC_PER_SEC ;
 unsigned long PWM_DUTY_SHIFT ;
 int PWM_DUTY_WIDTH ;
 unsigned long PWM_ENABLE ;
 unsigned long PWM_SCALE_SHIFT ;
 unsigned long PWM_SCALE_WIDTH ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int pwm_is_enabled (struct pwm_device*) ;
 int pwm_writel (struct tegra_pwm_chip*,int ,unsigned long) ;
 struct tegra_pwm_chip* to_tegra_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int tegra_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
       int duty_ns, int period_ns)
{
 struct tegra_pwm_chip *pc = to_tegra_pwm_chip(chip);
 unsigned long long c = duty_ns, hz;
 unsigned long rate;
 u32 val = 0;
 int err;






 c *= (1 << PWM_DUTY_WIDTH);
 c = DIV_ROUND_CLOSEST_ULL(c, period_ns);

 val = (u32)c << PWM_DUTY_SHIFT;





 rate = pc->clk_rate >> PWM_DUTY_WIDTH;


 hz = DIV_ROUND_CLOSEST_ULL(100ULL * NSEC_PER_SEC, period_ns);
 rate = DIV_ROUND_CLOSEST_ULL(100ULL * rate, hz);






 if (rate > 0)
  rate--;





 if (rate >> PWM_SCALE_WIDTH)
  return -EINVAL;

 val |= rate << PWM_SCALE_SHIFT;





 if (!pwm_is_enabled(pwm)) {
  err = clk_prepare_enable(pc->clk);
  if (err < 0)
   return err;
 } else
  val |= PWM_ENABLE;

 pwm_writel(pc, pwm->hwpwm, val);




 if (!pwm_is_enabled(pwm))
  clk_disable_unprepare(pc->clk);

 return 0;
}
