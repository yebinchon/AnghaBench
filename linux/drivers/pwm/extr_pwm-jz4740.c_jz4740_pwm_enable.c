
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pwm_device {int hwpwm; int pwm; } ;
struct pwm_chip {int dummy; } ;


 int JZ_TIMER_CTRL_PWM_ENABLE ;
 int jz4740_timer_enable (int ) ;
 int jz4740_timer_get_ctrl (int ) ;
 int jz4740_timer_set_ctrl (int ,int ) ;

__attribute__((used)) static int jz4740_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 uint32_t ctrl = jz4740_timer_get_ctrl(pwm->pwm);

 ctrl |= JZ_TIMER_CTRL_PWM_ENABLE;
 jz4740_timer_set_ctrl(pwm->hwpwm, ctrl);
 jz4740_timer_enable(pwm->hwpwm);

 return 0;
}
