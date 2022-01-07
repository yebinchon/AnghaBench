
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_pwm_device {int polarity; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 struct tpu_pwm_device* pwm_get_chip_data (struct pwm_device*) ;

__attribute__((used)) static int tpu_pwm_set_polarity(struct pwm_chip *chip, struct pwm_device *_pwm,
    enum pwm_polarity polarity)
{
 struct tpu_pwm_device *pwm = pwm_get_chip_data(_pwm);

 pwm->polarity = polarity;

 return 0;
}
