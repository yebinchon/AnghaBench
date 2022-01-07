
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_configure_opts_mipi_dphy {int wakeup; } ;
struct phy {int dummy; } ;
struct cdns_dphy_cfg {int dummy; } ;
struct cdns_dphy {int dummy; } ;


 int cdns_dphy_get_wakeup_time_ns (struct cdns_dphy*) ;
 int cdns_dsi_get_dphy_pll_cfg (struct cdns_dphy*,struct cdns_dphy_cfg*,struct phy_configure_opts_mipi_dphy*,unsigned int*) ;
 struct cdns_dphy* phy_get_drvdata (struct phy*) ;
 int phy_mipi_dphy_config_validate (struct phy_configure_opts_mipi_dphy*) ;

__attribute__((used)) static int cdns_dphy_config_from_opts(struct phy *phy,
          struct phy_configure_opts_mipi_dphy *opts,
          struct cdns_dphy_cfg *cfg)
{
 struct cdns_dphy *dphy = phy_get_drvdata(phy);
 unsigned int dsi_hfp_ext = 0;
 int ret;

 ret = phy_mipi_dphy_config_validate(opts);
 if (ret)
  return ret;

 ret = cdns_dsi_get_dphy_pll_cfg(dphy, cfg,
     opts, &dsi_hfp_ext);
 if (ret)
  return ret;

 opts->wakeup = cdns_dphy_get_wakeup_time_ns(dphy) / 1000;

 return 0;
}
