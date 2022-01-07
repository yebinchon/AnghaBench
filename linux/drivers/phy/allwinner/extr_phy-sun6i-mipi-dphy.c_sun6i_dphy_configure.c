
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union phy_configure_opts {int mipi_dphy; } ;
struct sun6i_dphy {int config; } ;
struct phy {int dummy; } ;


 int memcpy (int *,union phy_configure_opts*,int) ;
 struct sun6i_dphy* phy_get_drvdata (struct phy*) ;
 int phy_mipi_dphy_config_validate (int *) ;

__attribute__((used)) static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
{
 struct sun6i_dphy *dphy = phy_get_drvdata(phy);
 int ret;

 ret = phy_mipi_dphy_config_validate(&opts->mipi_dphy);
 if (ret)
  return ret;

 memcpy(&dphy->config, opts, sizeof(dphy->config));

 return 0;
}
