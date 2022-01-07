
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;


 int JZ_TIMER_CTRL_PWM_ENABLE ;
 int jz4740_timer_disable (int ) ;
 int jz4740_timer_get_ctrl (int ) ;
 int jz4740_timer_set_ctrl (int ,int ) ;
 int jz4740_timer_set_duty (int ,int) ;
 int jz4740_timer_set_period (int ,int) ;

__attribute__((used)) static void jz4740_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
{
 uint32_t ctrl = jz4740_timer_get_ctrl(pwm->hwpwm);





 jz4740_timer_set_duty(pwm->hwpwm, 0xffff);
 jz4740_timer_set_period(pwm->hwpwm, 0x0);






 ctrl &= ~JZ_TIMER_CTRL_PWM_ENABLE;
 jz4740_timer_set_ctrl(pwm->hwpwm, ctrl);


 jz4740_timer_disable(pwm->hwpwm);
}
