
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct gb_pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int gb_pwm_set_polarity_operation (struct gb_pwm_chip*,int ,int) ;
 struct gb_pwm_chip* pwm_chip_to_gb_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int gb_pwm_set_polarity(struct pwm_chip *chip, struct pwm_device *pwm,
          enum pwm_polarity polarity)
{
 struct gb_pwm_chip *pwmc = pwm_chip_to_gb_pwm_chip(chip);

 return gb_pwm_set_polarity_operation(pwmc, pwm->hwpwm, polarity);
}
