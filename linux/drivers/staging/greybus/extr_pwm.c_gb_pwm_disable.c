
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct gb_pwm_chip {int dummy; } ;


 int gb_pwm_disable_operation (struct gb_pwm_chip*,int ) ;
 struct gb_pwm_chip* pwm_chip_to_gb_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void gb_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct gb_pwm_chip *pwmc = pwm_chip_to_gb_pwm_chip(chip);

 gb_pwm_disable_operation(pwmc, pwm->hwpwm);
}
