
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct lpc32xx_pwm_chip {scalar_t__ base; int clk; } ;


 int PWM_ENABLE ;
 int clk_prepare_enable (int ) ;
 int readl (scalar_t__) ;
 struct lpc32xx_pwm_chip* to_lpc32xx_pwm_chip (struct pwm_chip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpc32xx_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct lpc32xx_pwm_chip *lpc32xx = to_lpc32xx_pwm_chip(chip);
 u32 val;
 int ret;

 ret = clk_prepare_enable(lpc32xx->clk);
 if (ret)
  return ret;

 val = readl(lpc32xx->base + (pwm->hwpwm << 2));
 val |= PWM_ENABLE;
 writel(val, lpc32xx->base + (pwm->hwpwm << 2));

 return 0;
}
