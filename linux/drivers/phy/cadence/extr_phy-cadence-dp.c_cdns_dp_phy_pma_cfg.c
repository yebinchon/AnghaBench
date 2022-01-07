
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdns_dp_phy {unsigned int num_lanes; } ;


 int cdns_dp_phy_pma_cmn_cfg_25mhz (struct cdns_dp_phy*) ;
 int cdns_dp_phy_pma_lane_cfg (struct cdns_dp_phy*,unsigned int) ;

__attribute__((used)) static void cdns_dp_phy_pma_cfg(struct cdns_dp_phy *cdns_phy)
{
 unsigned int i;


 cdns_dp_phy_pma_cmn_cfg_25mhz(cdns_phy);


 for (i = 0; i < cdns_phy->num_lanes; i++)
  cdns_dp_phy_pma_lane_cfg(cdns_phy, i);
}
