
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int dummy; } ;


 int pwm_put (struct pwm_device*) ;

void pwm_free(struct pwm_device *pwm)
{
 pwm_put(pwm);
}
