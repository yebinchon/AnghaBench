
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pwm_device {int hwpwm; } ;
struct pwm_chip {int dummy; } ;
struct hibvt_pwm_chip {int base; int clk; } ;


 int PWM_CFG0_ADDR (int ) ;
 int PWM_CFG1_ADDR (int ) ;
 int PWM_DUTY_MASK ;
 int PWM_PERIOD_MASK ;
 int clk_get_rate (int ) ;
 int div_u64 (int,int) ;
 int hibvt_pwm_set_bits (int ,int ,int ,int) ;
 struct hibvt_pwm_chip* to_hibvt_pwm_chip (struct pwm_chip*) ;

__attribute__((used)) static void hibvt_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
     int duty_cycle_ns, int period_ns)
{
 struct hibvt_pwm_chip *hi_pwm_chip = to_hibvt_pwm_chip(chip);
 u32 freq, period, duty;

 freq = div_u64(clk_get_rate(hi_pwm_chip->clk), 1000000);

 period = div_u64(freq * period_ns, 1000);
 duty = div_u64(period * duty_cycle_ns, period_ns);

 hibvt_pwm_set_bits(hi_pwm_chip->base, PWM_CFG0_ADDR(pwm->hwpwm),
   PWM_PERIOD_MASK, period);

 hibvt_pwm_set_bits(hi_pwm_chip->base, PWM_CFG1_ADDR(pwm->hwpwm),
   PWM_DUTY_MASK, duty);
}
