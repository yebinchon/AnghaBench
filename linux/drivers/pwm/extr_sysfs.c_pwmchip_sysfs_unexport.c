
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int flags; } ;
struct pwm_chip {unsigned int npwm; struct pwm_device* pwms; } ;
struct device {int dummy; } ;


 int PWMF_EXPORTED ;
 struct device* class_find_device (int *,int *,struct pwm_chip*,int ) ;
 int device_unregister (struct device*) ;
 int put_device (struct device*) ;
 int pwm_class ;
 int pwm_unexport_child (struct device*,struct pwm_device*) ;
 int pwmchip_sysfs_match ;
 scalar_t__ test_bit (int ,int *) ;

void pwmchip_sysfs_unexport(struct pwm_chip *chip)
{
 struct device *parent;
 unsigned int i;

 parent = class_find_device(&pwm_class, ((void*)0), chip,
       pwmchip_sysfs_match);
 if (!parent)
  return;

 for (i = 0; i < chip->npwm; i++) {
  struct pwm_device *pwm = &chip->pwms[i];

  if (test_bit(PWMF_EXPORTED, &pwm->flags))
   pwm_unexport_child(parent, pwm);
 }

 put_device(parent);
 device_unregister(parent);
}
