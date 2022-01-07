
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pwm_state {int enabled; } ;
struct TYPE_2__ {int enabled; } ;
struct pwm_export {TYPE_1__ suspend; } ;
struct pwm_device {int dummy; } ;
struct pwm_chip {struct pwm_device* pwms; } ;
struct device {int dummy; } ;


 struct pwm_chip* dev_get_drvdata (struct device*) ;
 int pwm_class_apply_state (struct pwm_export*,struct pwm_device*,struct pwm_state*) ;
 struct pwm_export* pwm_class_get_state (struct device*,struct pwm_device*,struct pwm_state*) ;

__attribute__((used)) static int pwm_class_resume_npwm(struct device *parent, unsigned int npwm)
{
 struct pwm_chip *chip = dev_get_drvdata(parent);
 unsigned int i;
 int ret = 0;

 for (i = 0; i < npwm; i++) {
  struct pwm_device *pwm = &chip->pwms[i];
  struct pwm_state state;
  struct pwm_export *export;

  export = pwm_class_get_state(parent, pwm, &state);
  if (!export)
   continue;

  state.enabled = export->suspend.enabled;
  ret = pwm_class_apply_state(export, pwm, &state);
  if (ret < 0)
   break;
 }

 return ret;
}
