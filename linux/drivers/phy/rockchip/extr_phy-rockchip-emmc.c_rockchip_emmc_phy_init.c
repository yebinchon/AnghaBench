
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_emmc_phy {int * emmcclk; } ;
struct phy {int dev; } ;


 scalar_t__ IS_ERR (int *) ;
 int * clk_get (int *,char*) ;
 int dev_dbg (int *,char*,int) ;
 struct rockchip_emmc_phy* phy_get_drvdata (struct phy*) ;

__attribute__((used)) static int rockchip_emmc_phy_init(struct phy *phy)
{
 struct rockchip_emmc_phy *rk_phy = phy_get_drvdata(phy);
 int ret = 0;
 rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
 if (IS_ERR(rk_phy->emmcclk)) {
  dev_dbg(&phy->dev, "Error getting emmcclk: %d\n", ret);
  rk_phy->emmcclk = ((void*)0);
 }

 return ret;
}
