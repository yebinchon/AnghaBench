
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cdns_dp_phy {int num_lanes; scalar_t__ base; } ;


 scalar_t__ PHY_AUX_CTRL ;
 scalar_t__ PHY_PMA_XCVR_PLLCLK_EN ;
 scalar_t__ PHY_PMA_XCVR_POWER_STATE_REQ ;
 int PHY_POWER_STATE_LN_0 ;
 int PHY_POWER_STATE_LN_1 ;
 int PHY_POWER_STATE_LN_2 ;
 int PHY_POWER_STATE_LN_3 ;
 scalar_t__ PHY_RESET ;
 int cdns_dp_phy_pma_cfg (struct cdns_dp_phy*) ;
 int cdns_dp_phy_pma_cmn_rate (struct cdns_dp_phy*) ;
 int cdns_dp_phy_pma_cmn_vco_cfg_25mhz (struct cdns_dp_phy*) ;
 int cdns_dp_phy_run (struct cdns_dp_phy*) ;
 int cdns_dp_phy_wait_pma_cmn_ready (struct cdns_dp_phy*) ;
 int cdns_dp_phy_write_field (struct cdns_dp_phy*,scalar_t__,int,int,int) ;
 struct cdns_dp_phy* phy_get_drvdata (struct phy*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_dp_phy_init(struct phy *phy)
{
 unsigned char lane_bits;

 struct cdns_dp_phy *cdns_phy = phy_get_drvdata(phy);

 writel(0x0003, cdns_phy->base + PHY_AUX_CTRL);


 cdns_dp_phy_pma_cfg(cdns_phy);






 cdns_dp_phy_write_field(cdns_phy, PHY_PMA_XCVR_POWER_STATE_REQ,
    PHY_POWER_STATE_LN_0, 6, 0x0000);

 if (cdns_phy->num_lanes >= 2) {
  cdns_dp_phy_write_field(cdns_phy,
     PHY_PMA_XCVR_POWER_STATE_REQ,
     PHY_POWER_STATE_LN_1, 6, 0x0000);

  if (cdns_phy->num_lanes == 4) {
   cdns_dp_phy_write_field(cdns_phy,
      PHY_PMA_XCVR_POWER_STATE_REQ,
      PHY_POWER_STATE_LN_2, 6, 0);
   cdns_dp_phy_write_field(cdns_phy,
      PHY_PMA_XCVR_POWER_STATE_REQ,
      PHY_POWER_STATE_LN_3, 6, 0);
  }
 }

 cdns_dp_phy_write_field(cdns_phy, PHY_PMA_XCVR_PLLCLK_EN,
    0, 1, 0x0000);

 if (cdns_phy->num_lanes >= 2) {
  cdns_dp_phy_write_field(cdns_phy, PHY_PMA_XCVR_PLLCLK_EN,
     1, 1, 0x0000);
  if (cdns_phy->num_lanes == 4) {
   cdns_dp_phy_write_field(cdns_phy,
      PHY_PMA_XCVR_PLLCLK_EN,
      2, 1, 0x0000);
   cdns_dp_phy_write_field(cdns_phy,
      PHY_PMA_XCVR_PLLCLK_EN,
      3, 1, 0x0000);
  }
 }





 lane_bits = (1 << cdns_phy->num_lanes) - 1;
 writel(((0xF & ~lane_bits) << 4) | (0xF & lane_bits),
     cdns_phy->base + PHY_RESET);


 writel(0x0001, cdns_phy->base + PHY_PMA_XCVR_PLLCLK_EN);


 cdns_dp_phy_pma_cmn_vco_cfg_25mhz(cdns_phy);
 cdns_dp_phy_pma_cmn_rate(cdns_phy);


 cdns_dp_phy_write_field(cdns_phy, PHY_RESET, 8, 1, 1);
 cdns_dp_phy_wait_pma_cmn_ready(cdns_phy);
 cdns_dp_phy_run(cdns_phy);

 return 0;
}
