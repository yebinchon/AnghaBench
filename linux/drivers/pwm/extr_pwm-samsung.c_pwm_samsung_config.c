
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;
struct pwm_chip {int dummy; } ;


 int __pwm_samsung_config (struct pwm_chip*,struct pwm_device*,int,int,int) ;

__attribute__((used)) static int pwm_samsung_config(struct pwm_chip *chip, struct pwm_device *pwm,
         int duty_ns, int period_ns)
{
 return __pwm_samsung_config(chip, pwm, duty_ns, period_ns, 0);
}
