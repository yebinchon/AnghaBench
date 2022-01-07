
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* clkout; } ;
struct dss_pll {TYPE_1__ cinfo; } ;


 int BUG () ;



 unsigned long dss_get_dispc_clk_rate () ;
 int dss_get_dispc_clk_source () ;
 struct dss_pll* dss_pll_find (char*) ;

__attribute__((used)) static unsigned long dispc_fclk_rate(void)
{
 struct dss_pll *pll;
 unsigned long r = 0;

 switch (dss_get_dispc_clk_source()) {
 case 128:
  r = dss_get_dispc_clk_rate();
  break;
 case 129:
  pll = dss_pll_find("dsi0");
  if (!pll)
   pll = dss_pll_find("video0");

  r = pll->cinfo.clkout[0];
  break;
 case 130:
  pll = dss_pll_find("dsi1");
  if (!pll)
   pll = dss_pll_find("video1");

  r = pll->cinfo.clkout[0];
  break;
 default:
  BUG();
  return 0;
 }

 return r;
}
