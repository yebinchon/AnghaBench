
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct cdns_dphy {int psm_clk; int pll_ref_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct cdns_dphy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int cdns_dphy_power_off(struct phy *phy)
{
 struct cdns_dphy *dphy = phy_get_drvdata(phy);

 clk_disable_unprepare(dphy->pll_ref_clk);
 clk_disable_unprepare(dphy->psm_clk);

 return 0;
}
