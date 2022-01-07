
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;


 int pca9685_pwm_disable (struct pwm_chip*,struct pwm_device*) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void pca9685_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 pca9685_pwm_disable(chip, pwm);
 pm_runtime_put(chip->dev);
}
