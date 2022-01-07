
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DIV_ROUND_CLOSEST_ULL (int,int ) ;
 int NSEC_PER_SEC ;

__attribute__((used)) static u32 pwm_omap_dmtimer_get_clock_cycles(unsigned long clk_rate, int ns)
{
 return DIV_ROUND_CLOSEST_ULL((u64)clk_rate * ns, NSEC_PER_SEC);
}
