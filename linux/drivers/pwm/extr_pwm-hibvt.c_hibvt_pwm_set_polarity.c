
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct hibvt_pwm_chip {int base; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int PWM_CTRL_ADDR (int ) ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_MASK ;
 int PWM_POLARITY_SHIFT ;
 int hibvt_pwm_set_bits (int ,int ,int ,int) ;
 struct hibvt_pwm_chip* to_hibvt_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void hibvt_pwm_set_polarity(struct pwm_chip *chip,
     struct pwm_device *pwm,
     enum pwm_polarity polarity)
{
 struct hibvt_pwm_chip *hi_pwm_chip = to_hibvt_pwm_chip(chip);

 if (polarity == PWM_POLARITY_INVERSED)
  hibvt_pwm_set_bits(hi_pwm_chip->base, PWM_CTRL_ADDR(pwm->hwpwm),
    PWM_POLARITY_MASK, (0x1 << PWM_POLARITY_SHIFT));
 else
  hibvt_pwm_set_bits(hi_pwm_chip->base, PWM_CTRL_ADDR(pwm->hwpwm),
    PWM_POLARITY_MASK, (0x0 << PWM_POLARITY_SHIFT));
}
