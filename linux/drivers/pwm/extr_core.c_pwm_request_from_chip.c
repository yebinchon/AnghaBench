
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {unsigned int npwm; struct pwm_device* pwms; } ;


 int EINVAL ;
 struct pwm_device* ERR_PTR (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_device_request (struct pwm_device*,char const*) ;
 int pwm_lock ;

struct pwm_device *pwm_request_from_chip(struct pwm_chip *chip,
      unsigned int index,
      const char *label)
{
 struct pwm_device *pwm;
 int err;

 if (!chip || index >= chip->npwm)
  return ERR_PTR(-EINVAL);

 mutex_lock(&pwm_lock);
 pwm = &chip->pwms[index];

 err = pwm_device_request(pwm, label);
 if (err < 0)
  pwm = ERR_PTR(err);

 mutex_unlock(&pwm_lock);
 return pwm;
}
