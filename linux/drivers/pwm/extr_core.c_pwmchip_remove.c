
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int flags; } ;
struct pwm_chip {unsigned int npwm; int list; struct pwm_device* pwms; } ;


 int CONFIG_OF ;
 int EBUSY ;
 scalar_t__ IS_ENABLED (int ) ;
 int PWMF_REQUESTED ;
 int free_pwms (struct pwm_chip*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_pwmchip_remove (struct pwm_chip*) ;
 int pwm_lock ;
 int pwmchip_sysfs_unexport (struct pwm_chip*) ;
 scalar_t__ test_bit (int ,int *) ;

int pwmchip_remove(struct pwm_chip *chip)
{
 unsigned int i;
 int ret = 0;

 pwmchip_sysfs_unexport(chip);

 mutex_lock(&pwm_lock);

 for (i = 0; i < chip->npwm; i++) {
  struct pwm_device *pwm = &chip->pwms[i];

  if (test_bit(PWMF_REQUESTED, &pwm->flags)) {
   ret = -EBUSY;
   goto out;
  }
 }

 list_del_init(&chip->list);

 if (IS_ENABLED(CONFIG_OF))
  of_pwmchip_remove(chip);

 free_pwms(chip);

out:
 mutex_unlock(&pwm_lock);
 return ret;
}
