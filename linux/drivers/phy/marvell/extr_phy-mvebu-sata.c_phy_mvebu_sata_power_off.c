
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct priv {int clk; scalar_t__ base; } ;
struct phy {int dummy; } ;


 int CTRL_PHY_SHUTDOWN ;
 int MODE_2_FORCE_PU_RX ;
 int MODE_2_FORCE_PU_TX ;
 int MODE_2_PU_IVREF ;
 int MODE_2_PU_PLL ;
 scalar_t__ SATA_IF_CTRL ;
 scalar_t__ SATA_PHY_MODE_2 ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct priv* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int phy_mvebu_sata_power_off(struct phy *phy)
{
 struct priv *priv = phy_get_drvdata(phy);
 u32 reg;

 clk_prepare_enable(priv->clk);


 reg = readl(priv->base + SATA_PHY_MODE_2);
 reg &= ~(MODE_2_FORCE_PU_TX | MODE_2_FORCE_PU_RX |
   MODE_2_PU_PLL | MODE_2_PU_IVREF);
 writel(reg, priv->base + SATA_PHY_MODE_2);


 reg = readl(priv->base + SATA_IF_CTRL);
 reg |= CTRL_PHY_SHUTDOWN;
 writel(reg, priv->base + SATA_IF_CTRL);

 clk_disable_unprepare(priv->clk);

 return 0;
}
