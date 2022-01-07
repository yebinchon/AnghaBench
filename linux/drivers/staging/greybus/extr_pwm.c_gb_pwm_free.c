
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dev; } ;
struct gb_pwm_chip {int dummy; } ;


 int dev_warn (int ,char*) ;
 int gb_pwm_deactivate_operation (struct gb_pwm_chip*,int ) ;
 struct gb_pwm_chip* pwm_chip_to_gb_pwm_chip (struct pwm_chip*) ;
 scalar_t__ pwm_is_enabled (struct pwm_device*) ;

__attribute__((used)) static void gb_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct gb_pwm_chip *pwmc = pwm_chip_to_gb_pwm_chip(chip);

 if (pwm_is_enabled(pwm))
  dev_warn(chip->dev, "freeing PWM device without disabling\n");

 gb_pwm_deactivate_operation(pwmc, pwm->hwpwm);
}
