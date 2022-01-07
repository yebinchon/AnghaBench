
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; } ;
struct pwm_device {int hwpwm; TYPE_1__ args; } ;
struct pwm_chip {int dummy; } ;
struct clps711x_chip {int dummy; } ;


 int EINVAL ;
 unsigned int clps711x_get_duty (struct pwm_device*,int) ;
 int clps711x_pwm_update_val (struct clps711x_chip*,int ,unsigned int) ;
 struct clps711x_chip* to_clps711x_chip (struct pwm_chip*) ;

__attribute__((used)) static int clps711x_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
          int duty_ns, int period_ns)
{
 struct clps711x_chip *priv = to_clps711x_chip(chip);
 unsigned int duty;

 if (period_ns != pwm->args.period)
  return -EINVAL;

 duty = clps711x_get_duty(pwm, duty_ns);
 clps711x_pwm_update_val(priv, pwm->hwpwm, duty);

 return 0;
}
