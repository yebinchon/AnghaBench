
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ parent_clk; } ;


 int clk_put (scalar_t__) ;
 TYPE_1__ dss ;

__attribute__((used)) static void dss_put_clocks(void)
{
 if (dss.parent_clk)
  clk_put(dss.parent_clk);
}
