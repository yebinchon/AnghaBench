
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int groups; int devt; struct device* parent; int release; } ;
struct pwm_export {TYPE_1__ child; int lock; struct pwm_device* pwm; } ;
struct pwm_device {int hwpwm; int flags; } ;
struct device {int kobj; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 int MKDEV (int ,int ) ;
 int PWMF_EXPORTED ;
 int clear_bit (int ,int *) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_register (TYPE_1__*) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 int kobject_uevent_env (int *,int ,char**) ;
 struct pwm_export* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int pwm_export_release ;
 int pwm_groups ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int pwm_export_child(struct device *parent, struct pwm_device *pwm)
{
 struct pwm_export *export;
 char *pwm_prop[2];
 int ret;

 if (test_and_set_bit(PWMF_EXPORTED, &pwm->flags))
  return -EBUSY;

 export = kzalloc(sizeof(*export), GFP_KERNEL);
 if (!export) {
  clear_bit(PWMF_EXPORTED, &pwm->flags);
  return -ENOMEM;
 }

 export->pwm = pwm;
 mutex_init(&export->lock);

 export->child.release = pwm_export_release;
 export->child.parent = parent;
 export->child.devt = MKDEV(0, 0);
 export->child.groups = pwm_groups;
 dev_set_name(&export->child, "pwm%u", pwm->hwpwm);

 ret = device_register(&export->child);
 if (ret) {
  clear_bit(PWMF_EXPORTED, &pwm->flags);
  put_device(&export->child);
  export = ((void*)0);
  return ret;
 }
 pwm_prop[0] = kasprintf(GFP_KERNEL, "EXPORT=pwm%u", pwm->hwpwm);
 pwm_prop[1] = ((void*)0);
 kobject_uevent_env(&parent->kobj, KOBJ_CHANGE, pwm_prop);
 kfree(pwm_prop[0]);

 return 0;
}
