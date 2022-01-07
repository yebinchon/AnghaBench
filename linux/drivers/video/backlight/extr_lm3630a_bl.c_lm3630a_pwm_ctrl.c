
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm3630a_chip {int pwmd; TYPE_1__* pdata; } ;
struct TYPE_2__ {unsigned int pwm_period; } ;


 int pwm_config (int ,unsigned int,unsigned int) ;
 int pwm_disable (int ) ;
 int pwm_enable (int ) ;

__attribute__((used)) static void lm3630a_pwm_ctrl(struct lm3630a_chip *pchip, int br, int br_max)
{
 unsigned int period = pchip->pdata->pwm_period;
 unsigned int duty = br * period / br_max;

 pwm_config(pchip->pwmd, duty, period);
 if (duty)
  pwm_enable(pchip->pwmd);
 else
  pwm_disable(pchip->pwmd);
}
