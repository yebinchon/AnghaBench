
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t clk_select; unsigned long clk_ps; } ;
struct fsl_pwm_chip {TYPE_1__ period; int * clk; } ;


 unsigned long clk_get_rate (int ) ;
 int do_div (unsigned long long,unsigned long) ;

__attribute__((used)) static unsigned int fsl_pwm_ticks_to_ns(struct fsl_pwm_chip *fpc,
       unsigned int ticks)
{
 unsigned long rate;
 unsigned long long exval;

 rate = clk_get_rate(fpc->clk[fpc->period.clk_select]);
 exval = ticks;
 exval *= 1000000000UL;
 do_div(exval, rate >> fpc->period.clk_ps);
 return exval;
}
