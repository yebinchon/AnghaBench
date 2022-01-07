
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_pwm_device {int dummy; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int kfree (struct tpu_pwm_device*) ;
 struct tpu_pwm_device* pwm_get_chip_data (struct pwm_device*) ;
 int tpu_pwm_timer_stop (struct tpu_pwm_device*) ;

__attribute__((used)) static void tpu_pwm_free(struct pwm_chip *chip, struct pwm_device *_pwm)
{
 struct tpu_pwm_device *pwm = pwm_get_chip_data(_pwm);

 tpu_pwm_timer_stop(pwm);
 kfree(pwm);
}
