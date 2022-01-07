
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable_unprepare (scalar_t__) ;
 scalar_t__ mxc_ahb_clk ;
 scalar_t__ mxc_ipg_clk ;
 scalar_t__ mxc_per_clk ;

void fsl_udc_clk_release(void)
{
 if (mxc_per_clk)
  clk_disable_unprepare(mxc_per_clk);
 clk_disable_unprepare(mxc_ahb_clk);
 clk_disable_unprepare(mxc_ipg_clk);
}
