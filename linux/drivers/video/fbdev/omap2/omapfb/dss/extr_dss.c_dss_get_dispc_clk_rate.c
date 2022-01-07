
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long dss_clk_rate; } ;


 TYPE_1__ dss ;

unsigned long dss_get_dispc_clk_rate(void)
{
 return dss.dss_clk_rate;
}
