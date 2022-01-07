
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct ep93xx_pwm {int clk; scalar_t__ base; } ;


 scalar_t__ EP93XX_PWMx_ENABLE ;
 int clk_disable (int ) ;
 struct ep93xx_pwm* to_ep93xx_pwm (struct pwm_chip*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void ep93xx_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ep93xx_pwm *ep93xx_pwm = to_ep93xx_pwm(chip);

 writew(0x0, ep93xx_pwm->base + EP93XX_PWMx_ENABLE);
 clk_disable(ep93xx_pwm->clk);
}
