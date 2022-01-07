
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_device {TYPE_2__* chip; } ;
struct pwm_capture {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* capture ) (TYPE_2__*,struct pwm_device*,struct pwm_capture*,unsigned long) ;} ;


 int EINVAL ;
 int ENOSYS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwm_lock ;
 int stub1 (TYPE_2__*,struct pwm_device*,struct pwm_capture*,unsigned long) ;

int pwm_capture(struct pwm_device *pwm, struct pwm_capture *result,
  unsigned long timeout)
{
 int err;

 if (!pwm || !pwm->chip->ops)
  return -EINVAL;

 if (!pwm->chip->ops->capture)
  return -ENOSYS;

 mutex_lock(&pwm_lock);
 err = pwm->chip->ops->capture(pwm->chip, pwm, result, timeout);
 mutex_unlock(&pwm_lock);

 return err;
}
