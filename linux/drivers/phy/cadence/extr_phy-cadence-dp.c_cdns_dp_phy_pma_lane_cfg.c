
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_dp_phy {scalar_t__ sd_base; } ;


 unsigned int LANE_MASK ;
 unsigned int RX_PSC_A0 ;
 unsigned int RX_PSC_A2 ;
 unsigned int RX_PSC_A3 ;
 unsigned int TX_PSC_A0 ;
 unsigned int TX_PSC_A2 ;
 unsigned int TX_PSC_A3 ;
 unsigned int XCVR_DIAG_HSCLK_SEL ;
 unsigned int XCVR_DIAG_PLLDRC_CTRL ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void cdns_dp_phy_pma_lane_cfg(struct cdns_dp_phy *cdns_phy,
         unsigned int lane)
{
 unsigned int lane_bits = (lane & LANE_MASK) << 11;


 writel(0x00FB, cdns_phy->sd_base + (TX_PSC_A0 | lane_bits));
 writel(0x04AA, cdns_phy->sd_base + (TX_PSC_A2 | lane_bits));
 writel(0x04AA, cdns_phy->sd_base + (TX_PSC_A3 | lane_bits));
 writel(0x0000, cdns_phy->sd_base + (RX_PSC_A0 | lane_bits));
 writel(0x0000, cdns_phy->sd_base + (RX_PSC_A2 | lane_bits));
 writel(0x0000, cdns_phy->sd_base + (RX_PSC_A3 | lane_bits));

 writel(0x0001, cdns_phy->sd_base + (XCVR_DIAG_PLLDRC_CTRL | lane_bits));
 writel(0x0000, cdns_phy->sd_base + (XCVR_DIAG_HSCLK_SEL | lane_bits));
}
