
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int dummy; } ;


 int clps711x_pwm_update_val (struct clps711x_chip*,int ,int ) ;
 struct clps711x_chip* to_clps711x_chip (struct pwm_chip*) ;

__attribute__((used)) static void clps711x_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct clps711x_chip *priv = to_clps711x_chip(chip);

 clps711x_pwm_update_val(priv, pwm->hwpwm, 0);
}
