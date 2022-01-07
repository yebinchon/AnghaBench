
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period; } ;
struct pwm_device {TYPE_1__ args; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int ) ;

__attribute__((used)) static unsigned int clps711x_get_duty(struct pwm_device *pwm, unsigned int v)
{

 return DIV_ROUND_CLOSEST(v * 0xf, pwm->args.period);
}
