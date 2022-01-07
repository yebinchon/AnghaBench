
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct mvebu_comphy_priv {int regmap; scalar_t__ base; } ;
struct mvebu_comphy_lane {int id; struct mvebu_comphy_priv* priv; } ;


 int MVEBU_COMPHY_PIPE_SELECTOR ;
 int MVEBU_COMPHY_PIPE_SELECTOR_PIPE (int ) ;
 int MVEBU_COMPHY_SELECTOR ;
 int MVEBU_COMPHY_SELECTOR_PHY (int ) ;
 scalar_t__ MVEBU_COMPHY_SERDES_CFG1 (int ) ;
 int MVEBU_COMPHY_SERDES_CFG1_CORE_RESET ;
 int MVEBU_COMPHY_SERDES_CFG1_RESET ;
 int MVEBU_COMPHY_SERDES_CFG1_RF_RESET ;
 struct mvebu_comphy_lane* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mvebu_comphy_power_off_legacy(struct phy *phy)
{
 struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 struct mvebu_comphy_priv *priv = lane->priv;
 u32 val;

 val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
 val &= ~(MVEBU_COMPHY_SERDES_CFG1_RESET |
   MVEBU_COMPHY_SERDES_CFG1_CORE_RESET |
   MVEBU_COMPHY_SERDES_CFG1_RF_RESET);
 writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));

 regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
 val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
 regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);

 regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
 val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
 regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);

 return 0;
}
