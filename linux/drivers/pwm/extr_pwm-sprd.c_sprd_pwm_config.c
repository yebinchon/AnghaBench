
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct sprd_pwm_chn {scalar_t__ clk_rate; } ;
struct sprd_pwm_chip {struct sprd_pwm_chn* chn; } ;
struct pwm_device {size_t hwpwm; } ;


 scalar_t__ DIV_ROUND_CLOSEST_ULL (int,int) ;
 int NSEC_PER_SEC ;
 int SPRD_PWM_DUTY ;
 int SPRD_PWM_MOD ;
 int SPRD_PWM_MOD_MAX ;
 int SPRD_PWM_PRESCALE ;
 scalar_t__ SPRD_PWM_PRESCALE_MSK ;
 int do_div (int,int ) ;
 int sprd_pwm_write (struct sprd_pwm_chip*,size_t,int ,scalar_t__) ;

__attribute__((used)) static int sprd_pwm_config(struct sprd_pwm_chip *spc, struct pwm_device *pwm,
      int duty_ns, int period_ns)
{
 struct sprd_pwm_chn *chn = &spc->chn[pwm->hwpwm];
 u32 prescale, duty;
 u64 tmp;
 duty = duty_ns * SPRD_PWM_MOD_MAX / period_ns;

 tmp = (u64)chn->clk_rate * period_ns;
 do_div(tmp, NSEC_PER_SEC);
 prescale = DIV_ROUND_CLOSEST_ULL(tmp, SPRD_PWM_MOD_MAX) - 1;
 if (prescale > SPRD_PWM_PRESCALE_MSK)
  prescale = SPRD_PWM_PRESCALE_MSK;
 sprd_pwm_write(spc, pwm->hwpwm, SPRD_PWM_PRESCALE, prescale);
 sprd_pwm_write(spc, pwm->hwpwm, SPRD_PWM_MOD, SPRD_PWM_MOD_MAX);
 sprd_pwm_write(spc, pwm->hwpwm, SPRD_PWM_DUTY, duty);

 return 0;
}
