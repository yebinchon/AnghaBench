
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int dummy; } ;


 unsigned int clps711x_get_duty (struct pwm_device*,int ) ;
 int clps711x_pwm_update_val (struct clps711x_chip*,int ,unsigned int) ;
 int pwm_get_duty_cycle (struct pwm_device*) ;
 struct clps711x_chip* to_clps711x_chip (struct pwm_chip*) ;

__attribute__((used)) static int clps711x_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct clps711x_chip *priv = to_clps711x_chip(chip);
 unsigned int duty;

 duty = clps711x_get_duty(pwm, pwm_get_duty_cycle(pwm));
 clps711x_pwm_update_val(priv, pwm->hwpwm, duty);

 return 0;
}
