
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dev; } ;
struct mixel_dphy_priv {int phy_ref_clk; int regmap; } ;


 int DPHY_LOCK ;
 int DPHY_PD_DPHY ;
 int DPHY_PD_PLL ;
 int PLL_LOCK_SLEEP ;
 int PLL_LOCK_TIMEOUT ;
 int PWR_ON ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 struct mixel_dphy_priv* phy_get_drvdata (struct phy*) ;
 int phy_write (struct phy*,int ,int ) ;
 int regmap_read_poll_timeout (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mixel_dphy_power_on(struct phy *phy)
{
 struct mixel_dphy_priv *priv = phy_get_drvdata(phy);
 u32 locked;
 int ret;

 ret = clk_prepare_enable(priv->phy_ref_clk);
 if (ret < 0)
  return ret;

 phy_write(phy, PWR_ON, DPHY_PD_PLL);
 ret = regmap_read_poll_timeout(priv->regmap, DPHY_LOCK, locked,
           locked, PLL_LOCK_SLEEP,
           PLL_LOCK_TIMEOUT);
 if (ret < 0) {
  dev_err(&phy->dev, "Could not get DPHY lock (%d)!\n", ret);
  goto clock_disable;
 }
 phy_write(phy, PWR_ON, DPHY_PD_DPHY);

 return 0;
clock_disable:
 clk_disable_unprepare(priv->phy_ref_clk);
 return ret;
}
