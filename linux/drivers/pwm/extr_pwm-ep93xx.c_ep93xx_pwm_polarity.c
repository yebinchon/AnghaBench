
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
struct ep93xx_pwm {int clk; scalar_t__ base; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 scalar_t__ EP93XX_PWMx_INVERT ;
 int PWM_POLARITY_INVERSED ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 struct ep93xx_pwm* to_ep93xx_pwm (struct pwm_chip*) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static int ep93xx_pwm_polarity(struct pwm_chip *chip, struct pwm_device *pwm,
          enum pwm_polarity polarity)
{
 struct ep93xx_pwm *ep93xx_pwm = to_ep93xx_pwm(chip);
 int ret;





 ret = clk_enable(ep93xx_pwm->clk);
 if (ret)
  return ret;

 if (polarity == PWM_POLARITY_INVERSED)
  writew(0x1, ep93xx_pwm->base + EP93XX_PWMx_INVERT);
 else
  writew(0x0, ep93xx_pwm->base + EP93XX_PWMx_INVERT);

 clk_disable(ep93xx_pwm->clk);

 return 0;
}
