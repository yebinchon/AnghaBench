
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_pwm_chip {int clk; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int PWMCR ;
 int PWMCR_PWM_ENABLE ;
 int clk_disable (int ) ;
 int spear_pwm_readl (struct spear_pwm_chip*,int ,int ) ;
 int spear_pwm_writel (struct spear_pwm_chip*,int ,int ,int ) ;
 struct spear_pwm_chip* to_spear_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void spear_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct spear_pwm_chip *pc = to_spear_pwm_chip(chip);
 u32 val;

 val = spear_pwm_readl(pc, pwm->hwpwm, PWMCR);
 val &= ~PWMCR_PWM_ENABLE;
 spear_pwm_writel(pc, pwm->hwpwm, PWMCR, val);

 clk_disable(pc->clk);
}
