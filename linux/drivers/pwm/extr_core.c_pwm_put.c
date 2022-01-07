
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pwm_device {TYPE_2__* chip; int * label; int flags; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int owner; int (* free ) (TYPE_2__*,struct pwm_device*) ;} ;


 int PWMF_REQUESTED ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;
 int pwm_lock ;
 int pwm_set_chip_data (struct pwm_device*,int *) ;
 int stub1 (TYPE_2__*,struct pwm_device*) ;
 int test_and_clear_bit (int ,int *) ;

void pwm_put(struct pwm_device *pwm)
{
 if (!pwm)
  return;

 mutex_lock(&pwm_lock);

 if (!test_and_clear_bit(PWMF_REQUESTED, &pwm->flags)) {
  pr_warn("PWM device already freed\n");
  goto out;
 }

 if (pwm->chip->ops->free)
  pwm->chip->ops->free(pwm->chip, pwm);

 pwm_set_chip_data(pwm, ((void*)0));
 pwm->label = ((void*)0);

 module_put(pwm->chip->ops->owner);
out:
 mutex_unlock(&pwm_lock);
}
