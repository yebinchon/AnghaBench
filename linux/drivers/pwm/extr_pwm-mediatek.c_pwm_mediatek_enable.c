
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_mediatek_chip {int regs; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int BIT (int ) ;
 int pwm_mediatek_clk_enable (struct pwm_chip*,struct pwm_device*) ;
 int readl (int ) ;
 struct pwm_mediatek_chip* to_pwm_mediatek_chip (struct pwm_chip*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int pwm_mediatek_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct pwm_mediatek_chip *pc = to_pwm_mediatek_chip(chip);
 u32 value;
 int ret;

 ret = pwm_mediatek_clk_enable(chip, pwm);
 if (ret < 0)
  return ret;

 value = readl(pc->regs);
 value |= BIT(pwm->hwpwm);
 writel(value, pc->regs);

 return 0;
}
