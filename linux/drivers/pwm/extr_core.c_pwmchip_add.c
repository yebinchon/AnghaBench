
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_chip {int dummy; } ;


 int PWM_POLARITY_NORMAL ;
 int pwmchip_add_with_polarity (struct pwm_chip*,int ) ;

int pwmchip_add(struct pwm_chip *chip)
{
 return pwmchip_add_with_polarity(chip, PWM_POLARITY_NORMAL);
}
