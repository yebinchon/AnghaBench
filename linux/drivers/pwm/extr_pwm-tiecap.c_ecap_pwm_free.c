
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;


 int dev_warn (int ,char*) ;
 int pm_runtime_put_sync (int ) ;
 scalar_t__ pwm_is_enabled (struct pwm_device*) ;

__attribute__((used)) static void ecap_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 if (pwm_is_enabled(pwm)) {
  dev_warn(chip->dev, "Removing PWM device without disabling\n");
  pm_runtime_put_sync(chip->dev);
 }
}
