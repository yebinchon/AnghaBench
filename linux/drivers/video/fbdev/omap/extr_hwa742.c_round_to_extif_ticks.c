
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extif_clk_period; } ;


 TYPE_1__ hwa742 ;

__attribute__((used)) static unsigned long round_to_extif_ticks(unsigned long ps, int div)
{
 int bus_tick = hwa742.extif_clk_period * div;
 return (ps + bus_tick - 1) / bus_tick * bus_tick;
}
