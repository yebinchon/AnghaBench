
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct berlin_pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int BERLIN_PWM_CONTROL ;
 int BERLIN_PWM_INVERT_POLARITY ;
 int PWM_POLARITY_NORMAL ;
 int berlin_pwm_readl (struct berlin_pwm_chip*,int ,int ) ;
 int berlin_pwm_writel (struct berlin_pwm_chip*,int ,int ,int ) ;
 struct berlin_pwm_chip* to_berlin_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int berlin_pwm_set_polarity(struct pwm_chip *chip,
       struct pwm_device *pwm_dev,
       enum pwm_polarity polarity)
{
 struct berlin_pwm_chip *pwm = to_berlin_pwm_chip(chip);
 u32 value;

 value = berlin_pwm_readl(pwm, pwm_dev->hwpwm, BERLIN_PWM_CONTROL);

 if (polarity == PWM_POLARITY_NORMAL)
  value &= ~BERLIN_PWM_INVERT_POLARITY;
 else
  value |= BERLIN_PWM_INVERT_POLARITY;

 berlin_pwm_writel(pwm, pwm_dev->hwpwm, value, BERLIN_PWM_CONTROL);

 return 0;
}
