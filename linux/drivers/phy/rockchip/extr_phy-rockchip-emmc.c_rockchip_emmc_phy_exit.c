
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_emmc_phy {int emmcclk; } ;
struct phy {int dummy; } ;


 int clk_put (int ) ;
 struct rockchip_emmc_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int rockchip_emmc_phy_exit(struct phy *phy)
{
 struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);

 clk_put(rk_phy->emmcclk);

 return 0;
}
