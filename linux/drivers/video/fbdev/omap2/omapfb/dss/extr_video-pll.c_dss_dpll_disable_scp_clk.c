
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dss_video_pll {int clkctrl_base; } ;


 int REG_MOD (int ,int ,int,int) ;

__attribute__((used)) static void dss_dpll_disable_scp_clk(struct dss_video_pll *vpll)
{
 REG_MOD(vpll->clkctrl_base, 0, 14, 14);
}
