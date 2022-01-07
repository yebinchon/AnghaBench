
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int EBUSY ;
 int jz4740_timer_start (int) ;

__attribute__((used)) static int jz4740_pwm_request(struct pwm_chip *chip, struct pwm_device *pwm)
{




 if (pwm->hwpwm < 2)
  return -EBUSY;

 jz4740_timer_start(pwm->hwpwm);

 return 0;
}
