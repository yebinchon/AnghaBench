
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct hibvt_pwm_chip {int base; } ;


 int PWM_CTRL_ADDR (int ) ;
 int PWM_ENABLE_MASK ;
 int hibvt_pwm_set_bits (int ,int ,int ,int) ;
 struct hibvt_pwm_chip* to_hibvt_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void hibvt_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct hibvt_pwm_chip *hi_pwm_chip = to_hibvt_pwm_chip(chip);

 hibvt_pwm_set_bits(hi_pwm_chip->base, PWM_CTRL_ADDR(pwm->hwpwm),
   PWM_ENABLE_MASK, 0x1);
}
