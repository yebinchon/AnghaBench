
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct pwm_device* ERR_PTR (int) ;
 int MAX_PWMS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_device_request (struct pwm_device*,char const*) ;
 int pwm_lock ;
 struct pwm_device* pwm_to_device (int) ;

struct pwm_device *pwm_request(int pwm, const char *label)
{
 struct pwm_device *dev;
 int err;

 if (pwm < 0 || pwm >= MAX_PWMS)
  return ERR_PTR(-EINVAL);

 mutex_lock(&pwm_lock);

 dev = pwm_to_device(pwm);
 if (!dev) {
  dev = ERR_PTR(-EPROBE_DEFER);
  goto out;
 }

 err = pwm_device_request(dev, label);
 if (err < 0)
  dev = ERR_PTR(err);

out:
 mutex_unlock(&pwm_lock);

 return dev;
}
