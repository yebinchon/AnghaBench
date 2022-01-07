
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {size_t hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct ehrpwm_pwm_chip {int* polarity; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 struct ehrpwm_pwm_chip* to_ehrpwm_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int ehrpwm_pwm_set_polarity(struct pwm_chip *chip,
       struct pwm_device *pwm,
       enum pwm_polarity polarity)
{
 struct ehrpwm_pwm_chip *pc = to_ehrpwm_pwm_chip(chip);


 pc->polarity[pwm->hwpwm] = polarity;

 return 0;
}
