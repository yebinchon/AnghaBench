
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpu_pwm_device {scalar_t__ duty; scalar_t__ period; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int TPU_PIN_ACTIVE ;
 int TPU_PIN_INACTIVE ;
 struct tpu_pwm_device* pwm_get_chip_data (struct pwm_device*) ;
 int tpu_pwm_set_pin (struct tpu_pwm_device*,int ) ;
 int tpu_pwm_timer_start (struct tpu_pwm_device*) ;
 int tpu_pwm_timer_stop (struct tpu_pwm_device*) ;

__attribute__((used)) static int tpu_pwm_enable(struct pwm_chip *chip, struct pwm_device *_pwm)
{
 struct tpu_pwm_device *pwm = pwm_get_chip_data(_pwm);
 int ret;

 ret = tpu_pwm_timer_start(pwm);
 if (ret < 0)
  return ret;





 if (pwm->duty == 0 || pwm->duty == pwm->period) {
  tpu_pwm_set_pin(pwm, pwm->duty ?
    TPU_PIN_ACTIVE : TPU_PIN_INACTIVE);
  tpu_pwm_timer_stop(pwm);
 }

 return 0;
}
