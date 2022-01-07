
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long core_clk_rate; } ;


 TYPE_1__ dispc ;

__attribute__((used)) static unsigned long dispc_core_clk_rate(void)
{
 return dispc.core_clk_rate;
}
