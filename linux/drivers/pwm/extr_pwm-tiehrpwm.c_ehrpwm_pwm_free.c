
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dev; } ;
struct ehrpwm_pwm_chip {scalar_t__* period_cycles; } ;


 int dev_warn (int ,char*) ;
 int pm_runtime_put_sync (int ) ;
 scalar_t__ pwm_is_enabled (struct pwm_device*) ;
 struct ehrpwm_pwm_chip* to_ehrpwm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void ehrpwm_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 struct ehrpwm_pwm_chip *pc = to_ehrpwm_pwm_chip(chip);

 if (pwm_is_enabled(pwm)) {
  dev_warn(chip->dev, "Removing PWM device without disabling\n");
  pm_runtime_put_sync(chip->dev);
 }


 pc->period_cycles[pwm->hwpwm] = 0;
}
