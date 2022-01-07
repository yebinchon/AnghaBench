
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dev; } ;


 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static int rcar_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{
 return pm_runtime_get_sync(chip->dev);
}
