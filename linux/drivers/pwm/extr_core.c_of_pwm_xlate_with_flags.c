
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; int polarity; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {int of_pwm_n_cells; int npwm; } ;
struct of_phandle_args {int args_count; int* args; } ;


 int EINVAL ;
 struct pwm_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 int PWM_POLARITY_INVERSED ;
 int PWM_POLARITY_INVERTED ;
 int PWM_POLARITY_NORMAL ;
 struct pwm_device* pwm_request_from_chip (struct pwm_chip*,int,int *) ;

struct pwm_device *
of_pwm_xlate_with_flags(struct pwm_chip *pc, const struct of_phandle_args *args)
{
 struct pwm_device *pwm;


 if (pc->of_pwm_n_cells < 3)
  return ERR_PTR(-EINVAL);


 if (args->args_count < 2)
  return ERR_PTR(-EINVAL);

 if (args->args[0] >= pc->npwm)
  return ERR_PTR(-EINVAL);

 pwm = pwm_request_from_chip(pc, args->args[0], ((void*)0));
 if (IS_ERR(pwm))
  return pwm;

 pwm->args.period = args->args[1];
 pwm->args.polarity = PWM_POLARITY_NORMAL;

 if (args->args_count > 2 && args->args[2] & PWM_POLARITY_INVERTED)
  pwm->args.polarity = PWM_POLARITY_INVERSED;

 return pwm;
}
