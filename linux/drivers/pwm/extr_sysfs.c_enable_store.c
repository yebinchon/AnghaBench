
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int enabled; } ;
struct pwm_export {int lock; struct pwm_device* pwm; } ;
struct pwm_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct pwm_export* child_to_pwm_export (struct device*) ;
 int kstrtoint (char const*,int ,int*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_apply_state (struct pwm_device*,struct pwm_state*) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;

__attribute__((used)) static ssize_t enable_store(struct device *child,
       struct device_attribute *attr,
       const char *buf, size_t size)
{
 struct pwm_export *export = child_to_pwm_export(child);
 struct pwm_device *pwm = export->pwm;
 struct pwm_state state;
 int val, ret;

 ret = kstrtoint(buf, 0, &val);
 if (ret)
  return ret;

 mutex_lock(&export->lock);

 pwm_get_state(pwm, &state);

 switch (val) {
 case 0:
  state.enabled = 0;
  break;
 case 1:
  state.enabled = 1;
  break;
 default:
  ret = -EINVAL;
  goto unlock;
 }

 ret = pwm_apply_state(pwm, &state);

unlock:
 mutex_unlock(&export->lock);
 return ret ? : size;
}
