
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun6i_dphy {int mod_clk; int reset; } ;
struct phy {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int clk_set_rate_exclusive (int ,int) ;
 struct sun6i_dphy* phy_get_drvdata (struct phy*) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int sun6i_dphy_init(struct phy *phy)
{
 struct sun6i_dphy *dphy = phy_get_drvdata(phy);

 reset_control_deassert(dphy->reset);
 clk_prepare_enable(dphy->mod_clk);
 clk_set_rate_exclusive(dphy->mod_clk, 150000000);

 return 0;
}
