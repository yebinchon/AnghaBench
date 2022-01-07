
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_typec_phy {scalar_t__ base; } ;


 int CLK_PLL_CONFIG ;
 int CLK_PLL_MASK ;
 scalar_t__ CMN_DIAG_HSCLK_SEL ;
 scalar_t__ PMA_CMN_CTRL1 ;
 scalar_t__ TX_RCVDET_EN_TMR (int) ;
 scalar_t__ TX_RCVDET_ST_TMR (int) ;
 scalar_t__ XCVR_DIAG_LANE_FCM_EN_MGN (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tcphy_cfg_24m(struct rockchip_typec_phy *tcphy)
{
 u32 i, rdata;





 writel(0x830, tcphy->base + PMA_CMN_CTRL1);
 for (i = 0; i < 4; i++) {




  writel(0x90, tcphy->base + XCVR_DIAG_LANE_FCM_EN_MGN(i));
  writel(0x960, tcphy->base + TX_RCVDET_EN_TMR(i));
  writel(0x30, tcphy->base + TX_RCVDET_ST_TMR(i));
 }

 rdata = readl(tcphy->base + CMN_DIAG_HSCLK_SEL);
 rdata &= ~CLK_PLL_MASK;
 rdata |= CLK_PLL_CONFIG;
 writel(rdata, tcphy->base + CMN_DIAG_HSCLK_SEL);
}
