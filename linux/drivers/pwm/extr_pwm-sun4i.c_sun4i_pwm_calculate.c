
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sun4i_pwm_chip {TYPE_1__* data; int clk; } ;
struct pwm_state {int period; int duty_cycle; } ;
struct TYPE_2__ {scalar_t__ has_prescaler_bypass; } ;


 int EINVAL ;
 int NSEC_PER_SEC ;
 int PWM_PRD_MASK ;
 unsigned int PWM_PRESCAL_MASK ;
 int clk_get_rate (int ) ;
 int do_div (int,int) ;
 unsigned int* prescaler_table ;

__attribute__((used)) static int sun4i_pwm_calculate(struct sun4i_pwm_chip *sun4i_pwm,
          const struct pwm_state *state,
          u32 *dty, u32 *prd, unsigned int *prsclr)
{
 u64 clk_rate, div = 0;
 unsigned int pval, prescaler = 0;

 clk_rate = clk_get_rate(sun4i_pwm->clk);

 if (sun4i_pwm->data->has_prescaler_bypass) {

  prescaler = PWM_PRESCAL_MASK;
  pval = 1;





  div = clk_rate * state->period + NSEC_PER_SEC / 2;
  do_div(div, NSEC_PER_SEC);
  if (div - 1 > PWM_PRD_MASK)
   prescaler = 0;
 }

 if (prescaler == 0) {

  for (prescaler = 0; prescaler < PWM_PRESCAL_MASK; prescaler++) {
   if (!prescaler_table[prescaler])
    continue;
   pval = prescaler_table[prescaler];
   div = clk_rate;
   do_div(div, pval);
   div = div * state->period;
   do_div(div, NSEC_PER_SEC);
   if (div - 1 <= PWM_PRD_MASK)
    break;
  }

  if (div - 1 > PWM_PRD_MASK)
   return -EINVAL;
 }

 *prd = div;
 div *= state->duty_cycle;
 do_div(div, state->period);
 *dty = div;
 *prsclr = prescaler;

 return 0;
}
