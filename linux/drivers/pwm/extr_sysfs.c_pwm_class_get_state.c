
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int dummy; } ;
struct pwm_export {int lock; } ;
struct pwm_device {int flags; } ;
struct device {int dummy; } ;


 int PWMF_EXPORTED ;
 struct pwm_export* child_to_pwm_export (struct device*) ;
 struct device* device_find_child (struct device*,struct pwm_device*,int ) ;
 int mutex_lock (int *) ;
 int put_device (struct device*) ;
 int pwm_get_state (struct pwm_device*,struct pwm_state*) ;
 int pwm_unexport_match ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct pwm_export *pwm_class_get_state(struct device *parent,
           struct pwm_device *pwm,
           struct pwm_state *state)
{
 struct device *child;
 struct pwm_export *export;

 if (!test_bit(PWMF_EXPORTED, &pwm->flags))
  return ((void*)0);

 child = device_find_child(parent, pwm, pwm_unexport_match);
 if (!child)
  return ((void*)0);

 export = child_to_pwm_export(child);
 put_device(child);

 mutex_lock(&export->lock);
 pwm_get_state(pwm, state);

 return export;
}
