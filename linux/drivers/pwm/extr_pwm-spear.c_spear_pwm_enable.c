
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
 int clk_enable (int ) ;
 int spear_pwm_readl (struct spear_pwm_chip*,int ,int ) ;
 int spear_pwm_writel (struct spear_pwm_chip*,int ,int ,int ) ;
 struct spear_pwm_chip* to_spear_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int spear_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct spear_pwm_chip *pc = to_spear_pwm_chip(chip);
 int rc = 0;
 u32 val;

 rc = clk_enable(pc->clk);
 if (rc)
  return rc;

 val = spear_pwm_readl(pc, pwm->hwpwm, PWMCR);
 val |= PWMCR_PWM_ENABLE;
 spear_pwm_writel(pc, pwm->hwpwm, PWMCR, val);

 return 0;
}
