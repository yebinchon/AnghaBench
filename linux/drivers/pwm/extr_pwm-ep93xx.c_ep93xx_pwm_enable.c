
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct ep93xx_pwm {scalar_t__ base; int clk; } ;


 scalar_t__ EP93XX_PWMx_ENABLE ;
 int clk_enable (int ) ;
 struct ep93xx_pwm* to_ep93xx_pwm (struct pwm_chip*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ep93xx_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ep93xx_pwm *ep93xx_pwm = to_ep93xx_pwm(chip);
 int ret;

 ret = clk_enable(ep93xx_pwm->clk);
 if (ret)
  return ret;

 writew(0x1, ep93xx_pwm->base + EP93XX_PWMx_ENABLE);

 return 0;
}
