
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int polarity; } ;
struct pwm_export {int lock; struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum pwm_polarity { ____Placeholder_pwm_polarity } pwm_polarity ;


 size_t EINVAL ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_NORMAL ;
 struct pwm_export* child_to_pwm_export (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_apply_state (struct pwm_device*,struct pwm_state*) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;

__attribute__((used)) static ssize_t polarity_store(struct device *child,
         struct device_attribute *attr,
         const char *buf, size_t size)
{
 struct pwm_export *export = child_to_pwm_export(child);
 struct pwm_device *pwm = export->pwm;
 enum pwm_polarity polarity;
 struct pwm_state state;
 int ret;

 if (sysfs_streq(buf, "normal"))
  polarity = PWM_POLARITY_NORMAL;
 else if (sysfs_streq(buf, "inversed"))
  polarity = PWM_POLARITY_INVERSED;
 else
  return -EINVAL;

 mutex_lock(&export->lock);
 pwm_get_state(pwm, &state);
 state.polarity = polarity;
 ret = pwm_apply_state(pwm, &state);
 mutex_unlock(&export->lock);

 return ret ? : size;
}
