
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dphy {int reset; int mod_clk; } ;
struct phy {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_rate_exclusive_put (int ) ;
 struct sun6i_dphy* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int sun6i_dphy_exit(struct phy *phy)
{
 struct sun6i_dphy *dphy = phy_get_drvdata(phy);

 clk_rate_exclusive_put(dphy->mod_clk);
 clk_disable_unprepare(dphy->mod_clk);
 reset_control_assert(dphy->reset);

 return 0;
}
