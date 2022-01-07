
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct mxs_pwm_chip {int clk; scalar_t__ base; } ;


 scalar_t__ CLR ;
 scalar_t__ PWM_CTRL ;
 int clk_disable_unprepare (int ) ;
 struct mxs_pwm_chip* to_mxs_pwm_chip (struct pwm_chip*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mxs_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct mxs_pwm_chip *mxs = to_mxs_pwm_chip(chip);

 writel(1 << pwm->hwpwm, mxs->base + PWM_CTRL + CLR);

 clk_disable_unprepare(mxs->clk);
}
