
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ period; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {int of_pwm_n_cells; scalar_t__ npwm; } ;
struct of_phandle_args {int args_count; scalar_t__* args; } ;


 int EINVAL ;
 struct pwm_device* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct pwm_device*) ;
 struct pwm_device* pwm_request_from_chip (struct pwm_chip*,scalar_t__,int *) ;

__attribute__((used)) static struct pwm_device *
of_pwm_simple_xlate(struct pwm_chip *pc, const struct of_phandle_args *args)
{
 struct pwm_device *pwm;


 if (pc->of_pwm_n_cells < 2)
  return ERR_PTR(-EINVAL);


 if (args->args_count != pc->of_pwm_n_cells)
  return ERR_PTR(-EINVAL);

 if (args->args[0] >= pc->npwm)
  return ERR_PTR(-EINVAL);

 pwm = pwm_request_from_chip(pc, args->args[0], ((void*)0));
 if (IS_ERR(pwm))
  return pwm;

 pwm->args.period = args->args[1];

 return pwm;
}
