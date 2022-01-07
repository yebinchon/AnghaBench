
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int jz4740_timer_set_ctrl (int ,int ) ;
 int jz4740_timer_stop (int ) ;

__attribute__((used)) static void jz4740_pwm_free(struct pwm_chip *chip, struct pwm_device *pwm)
{
 jz4740_timer_set_ctrl(pwm->hwpwm, 0);

 jz4740_timer_stop(pwm->hwpwm);
}
