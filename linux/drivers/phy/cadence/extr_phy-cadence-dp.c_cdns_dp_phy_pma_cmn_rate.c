
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_dp_phy {int max_bit_rate; unsigned int num_lanes; scalar_t__ sd_base; } ;


 scalar_t__ CMN_PDIAG_PLL0_CLK_SEL_M0 ;
 scalar_t__ PHY_PLL_CFG ;
 unsigned int XCVR_DIAG_HSCLK_DIV ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void cdns_dp_phy_pma_cmn_rate(struct cdns_dp_phy *cdns_phy)
{
 unsigned int clk_sel_val = 0;
 unsigned int hsclk_div_val = 0;
 unsigned int i;


 writel(0x0000, cdns_phy->sd_base + PHY_PLL_CFG);

 switch (cdns_phy->max_bit_rate) {
 case 1620:
  clk_sel_val = 0x0f01;
  hsclk_div_val = 2;
  break;
 case 2160:
 case 2430:
 case 2700:
  clk_sel_val = 0x0701;
   hsclk_div_val = 1;
  break;
 case 3240:
  clk_sel_val = 0x0b00;
  hsclk_div_val = 2;
  break;
 case 4320:
 case 5400:
  clk_sel_val = 0x0301;
  hsclk_div_val = 0;
  break;
 case 8100:
  clk_sel_val = 0x0200;
  hsclk_div_val = 0;
  break;
 }

 writel(clk_sel_val, cdns_phy->sd_base + CMN_PDIAG_PLL0_CLK_SEL_M0);


 for (i = 0; i < cdns_phy->num_lanes; i++) {
  writel(hsclk_div_val,
         cdns_phy->sd_base + (XCVR_DIAG_HSCLK_DIV | (i<<11)));
 }
}
