
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; int flags; } ;
struct device {int kobj; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 int PWMF_EXPORTED ;
 struct device* device_find_child (struct device*,struct pwm_device*,int ) ;
 int device_unregister (struct device*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int put_device (struct device*) ;
 int pwm_put (struct pwm_device*) ;
 int pwm_unexport_match ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static int pwm_unexport_child(struct device *parent, struct pwm_device *pwm)
{
 struct device *child;
 char *pwm_prop[2];

 if (!test_and_clear_bit(PWMF_EXPORTED, &pwm->flags))
  return -ENODEV;

 child = device_find_child(parent, pwm, pwm_unexport_match);
 if (!child)
  return -ENODEV;

 pwm_prop[0] = kasprintf(GFP_KERNEL, "UNEXPORT=pwm%u", pwm->hwpwm);
 pwm_prop[1] = ((void*)0);
 kobject_uevent_env(&parent->kobj, KOBJ_CHANGE, pwm_prop);
 kfree(pwm_prop[0]);


 put_device(child);
 device_unregister(child);
 pwm_put(pwm);

 return 0;
}
