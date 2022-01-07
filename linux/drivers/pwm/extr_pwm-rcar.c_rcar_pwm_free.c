
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;


 int pm_runtime_put (int ) ;

__attribute__((used)) static void rcar_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 pm_runtime_put(chip->dev);
}
