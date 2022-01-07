
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {int dummy; } ;
struct pwm_export {int lock; } ;
struct pwm_device {int dummy; } ;


 int mutex_unlock (int *) ;
 int pwm_apply_state (struct pwm_device*,struct pwm_state*) ;

__attribute__((used)) static int pwm_class_apply_state(struct pwm_export *export,
     struct pwm_device *pwm,
     struct pwm_state *state)
{
 int ret = pwm_apply_state(pwm, state);


 mutex_unlock(&export->lock);

 return ret;
}
