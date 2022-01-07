
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {scalar_t__ npwm; } ;
struct of_phandle_args {scalar_t__* args; } ;


 int EINVAL ;
 struct pwm_device* ERR_PTR (int ) ;
 struct pwm_device* pwm_request_from_chip (struct pwm_chip*,scalar_t__,int *) ;

__attribute__((used)) static struct pwm_device *clps711x_pwm_xlate(struct pwm_chip *chip,
          const struct of_phandle_args *args)
{
 if (args->args[0] >= chip->npwm)
  return ERR_PTR(-EINVAL);

 return pwm_request_from_chip(chip, args->args[0], ((void*)0));
}
