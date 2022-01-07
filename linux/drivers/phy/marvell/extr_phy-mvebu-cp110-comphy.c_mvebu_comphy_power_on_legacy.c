
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct mvebu_comphy_priv {scalar_t__ base; int regmap; } ;
struct mvebu_comphy_lane {int submode; int id; int mode; int port; struct mvebu_comphy_priv* priv; } ;


 int ENOTSUPP ;
 int MVEBU_COMPHY_PIPE_SELECTOR ;
 int MVEBU_COMPHY_PIPE_SELECTOR_PIPE (int ) ;
 int MVEBU_COMPHY_SELECTOR ;
 int MVEBU_COMPHY_SELECTOR_PHY (int ) ;
 scalar_t__ MVEBU_COMPHY_SERDES_CFG1 (int ) ;
 int MVEBU_COMPHY_SERDES_CFG1_RF_RESET ;




 int mvebu_comphy_get_mux (int ,int ,int ,int) ;
 int mvebu_comphy_set_mode_10gkr (struct phy*) ;
 int mvebu_comphy_set_mode_rxaui (struct phy*) ;
 int mvebu_comphy_set_mode_sgmii (struct phy*) ;
 struct mvebu_comphy_lane* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int mvebu_comphy_power_on_legacy(struct phy *phy)
{
 struct mvebu_comphy_lane *lane = phy_get_drvdata(phy);
 struct mvebu_comphy_priv *priv = lane->priv;
 int ret, mux;
 u32 val;

 mux = mvebu_comphy_get_mux(lane->id, lane->port,
       lane->mode, lane->submode);
 if (mux < 0)
  return -ENOTSUPP;

 regmap_read(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, &val);
 val &= ~(0xf << MVEBU_COMPHY_PIPE_SELECTOR_PIPE(lane->id));
 regmap_write(priv->regmap, MVEBU_COMPHY_PIPE_SELECTOR, val);

 regmap_read(priv->regmap, MVEBU_COMPHY_SELECTOR, &val);
 val &= ~(0xf << MVEBU_COMPHY_SELECTOR_PHY(lane->id));
 val |= mux << MVEBU_COMPHY_SELECTOR_PHY(lane->id);
 regmap_write(priv->regmap, MVEBU_COMPHY_SELECTOR, val);

 switch (lane->submode) {
 case 128:
 case 130:
  ret = mvebu_comphy_set_mode_sgmii(phy);
  break;
 case 129:
  ret = mvebu_comphy_set_mode_rxaui(phy);
  break;
 case 131:
  ret = mvebu_comphy_set_mode_10gkr(phy);
  break;
 default:
  return -ENOTSUPP;
 }


 val = readl(priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));
 val |= MVEBU_COMPHY_SERDES_CFG1_RF_RESET;
 writel(val, priv->base + MVEBU_COMPHY_SERDES_CFG1(lane->id));

 return ret;
}
