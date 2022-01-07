
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned long* clkout; } ;
struct dss_pll {TYPE_1__ cinfo; } ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;


 int BUG () ;
 int DISPC_DIVISORo (int) ;
 int FLD_GET (int ,int,int) ;



 unsigned long dispc_fclk_rate () ;
 int dispc_read_reg (int ) ;
 unsigned long dss_get_dispc_clk_rate () ;
 int dss_get_lcd_clk_source (int) ;
 scalar_t__ dss_mgr_is_lcd (int) ;
 struct dss_pll* dss_pll_find (char*) ;

__attribute__((used)) static unsigned long dispc_mgr_lclk_rate(enum omap_channel channel)
{
 struct dss_pll *pll;
 int lcd;
 unsigned long r;
 u32 l;

 if (dss_mgr_is_lcd(channel)) {
  l = dispc_read_reg(DISPC_DIVISORo(channel));

  lcd = FLD_GET(l, 23, 16);

  switch (dss_get_lcd_clk_source(channel)) {
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

  return r / lcd;
 } else {
  return dispc_fclk_rate();
 }
}
