
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union phy_configure_opts {int mipi_dphy; } ;
struct phy {int dummy; } ;
struct cdns_dphy_cfg {int member_0; } ;
struct cdns_dphy {int dummy; } ;


 int DPHY_CLK_CFG_LEFT_DRIVES_LEFT ;
 int cdns_dphy_config_from_opts (struct phy*,int *,struct cdns_dphy_cfg*) ;
 int cdns_dphy_set_clk_lane_cfg (struct cdns_dphy*,int ) ;
 int cdns_dphy_set_pll_cfg (struct cdns_dphy*,struct cdns_dphy_cfg*) ;
 int cdns_dphy_setup_psm (struct cdns_dphy*) ;
 struct cdns_dphy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
{
 struct cdns_dphy *dphy = phy_get_drvdata(phy);
 struct cdns_dphy_cfg cfg = { 0 };
 int ret;

 ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
 if (ret)
  return ret;





 ret = cdns_dphy_setup_psm(dphy);
 if (ret)
  return ret;
 cdns_dphy_set_clk_lane_cfg(dphy, DPHY_CLK_CFG_LEFT_DRIVES_LEFT);





 cdns_dphy_set_pll_cfg(dphy, &cfg);

 return 0;
}
