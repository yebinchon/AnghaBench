
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct berlin_pwm_chip {int dummy; } ;


 int BERLIN_PWM_EN ;
 int BERLIN_PWM_ENABLE ;
 int berlin_pwm_readl (struct berlin_pwm_chip*,int ,int ) ;
 int berlin_pwm_writel (struct berlin_pwm_chip*,int ,int ,int ) ;
 struct berlin_pwm_chip* to_berlin_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int berlin_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm_dev)
{
 struct berlin_pwm_chip *pwm = to_berlin_pwm_chip(chip);
 u32 value;

 value = berlin_pwm_readl(pwm, pwm_dev->hwpwm, BERLIN_PWM_EN);
 value |= BERLIN_PWM_ENABLE;
 berlin_pwm_writel(pwm, pwm_dev->hwpwm, value, BERLIN_PWM_EN);

 return 0;
}
