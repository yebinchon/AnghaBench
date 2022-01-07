
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct samsung_pwm_chip {int dummy; } ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 int PWM_POLARITY_NORMAL ;
 int pwm_samsung_set_invert (struct samsung_pwm_chip*,int ,int) ;
 struct samsung_pwm_chip* to_samsung_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static int pwm_samsung_set_polarity(struct pwm_chip *chip,
        struct pwm_device *pwm,
        enum pwm_polarity polarity)
{
 struct samsung_pwm_chip *our_chip = to_samsung_pwm_chip(chip);
 bool invert = (polarity == PWM_POLARITY_NORMAL);


 pwm_samsung_set_invert(our_chip, pwm->hwpwm, invert);

 return 0;
}
