
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mod_period; } ;
struct fsl_pwm_chip {TYPE_1__ period; } ;


 int do_div (unsigned long long,unsigned int) ;
 unsigned int fsl_pwm_ticks_to_ns (struct fsl_pwm_chip*,unsigned int) ;

__attribute__((used)) static unsigned int fsl_pwm_calculate_duty(struct fsl_pwm_chip *fpc,
        unsigned int duty_ns)
{
 unsigned long long duty;

 unsigned int period = fpc->period.mod_period + 1;
 unsigned int period_ns = fsl_pwm_ticks_to_ns(fpc, period);

 duty = (unsigned long long)duty_ns * period;
 do_div(duty, period_ns);

 return (unsigned int)duty;
}
