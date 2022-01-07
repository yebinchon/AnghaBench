
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int kfree (int ) ;
 int pwm_get_chip_data (struct pwm_device*) ;

__attribute__((used)) static void pwm_samsung_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 kfree(pwm_get_chip_data(pwm));
}
