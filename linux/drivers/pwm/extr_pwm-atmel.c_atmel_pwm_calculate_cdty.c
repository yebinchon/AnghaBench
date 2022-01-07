
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwm_state {unsigned long long duty_cycle; int period; } ;


 int do_div (unsigned long long,int ) ;

__attribute__((used)) static void atmel_pwm_calculate_cdty(const struct pwm_state *state,
         unsigned long cprd, unsigned long *cdty)
{
 unsigned long long cycles = state->duty_cycle;

 cycles *= cprd;
 do_div(cycles, state->period);
 *cdty = cprd - cycles;
}
