
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union phy_configure_opts {int mipi_dphy; } ;
struct phy {int dummy; } ;
struct cdns_dphy_cfg {int member_0; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 int EINVAL ;
 int PHY_MODE_MIPI_DPHY ;
 int cdns_dphy_config_from_opts (struct phy*,int *,struct cdns_dphy_cfg*) ;

__attribute__((used)) static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
         union phy_configure_opts *opts)
{
 struct cdns_dphy_cfg cfg = { 0 };

 if (mode != PHY_MODE_MIPI_DPHY)
  return -EINVAL;

 return cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
}
