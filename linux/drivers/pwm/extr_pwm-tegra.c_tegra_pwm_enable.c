
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pwm_chip {int clk; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int PWM_ENABLE ;
 int clk_prepare_enable (int ) ;
 int pwm_readl (struct tegra_pwm_chip*,int ) ;
 int pwm_writel (struct tegra_pwm_chip*,int ,int ) ;
 struct tegra_pwm_chip* to_tegra_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int tegra_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct tegra_pwm_chip *pc = to_tegra_pwm_chip(chip);
 int rc = 0;
 u32 val;

 rc = clk_prepare_enable(pc->clk);
 if (rc < 0)
  return rc;

 val = pwm_readl(pc, pwm->hwpwm);
 val |= PWM_ENABLE;
 pwm_writel(pc, pwm->hwpwm, val);

 return 0;
}
