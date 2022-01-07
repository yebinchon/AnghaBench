
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; } ;
struct pwm_device {TYPE_1__ args; } ;
struct pwm_chip {int dummy; } ;
struct of_phandle_args {int * args; } ;


 scalar_t__ IS_ERR (struct pwm_device*) ;
 struct pwm_device* pwm_request_from_chip (struct pwm_chip*,int ,int *) ;

__attribute__((used)) static struct pwm_device *
pxa_pwm_of_xlate(struct pwm_chip *pc, const struct of_phandle_args *args)
{
 struct pwm_device *pwm;

 pwm = pwm_request_from_chip(pc, 0, ((void*)0));
 if (IS_ERR(pwm))
  return pwm;

 pwm->args.period = args->args[0];

 return pwm;
}
