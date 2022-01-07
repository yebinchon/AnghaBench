
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pciephy_priv {int clk; int rst; } ;
struct phy {int dummy; } ;


 int FIELD_PREP (int ,int ) ;
 int PCL_PHY_R00 ;
 int PCL_PHY_R06 ;
 int PCL_PHY_R26 ;
 int RX_EQ_ADJ ;
 int RX_EQ_ADJ_EN ;
 int RX_EQ_ADJ_VAL ;
 int VCO_CTRL ;
 int VCO_CTRL_INIT_VAL ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct uniphier_pciephy_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_deassert (int ) ;
 int uniphier_pciephy_deassert (struct uniphier_pciephy_priv*) ;
 int uniphier_pciephy_set_param (struct uniphier_pciephy_priv*,int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int uniphier_pciephy_init(struct phy *phy)
{
 struct uniphier_pciephy_priv *priv = phy_get_drvdata(phy);
 int ret;

 ret = clk_prepare_enable(priv->clk);
 if (ret)
  return ret;

 ret = reset_control_deassert(priv->rst);
 if (ret)
  goto out_clk_disable;

 uniphier_pciephy_set_param(priv, PCL_PHY_R00,
       RX_EQ_ADJ_EN, RX_EQ_ADJ_EN);
 uniphier_pciephy_set_param(priv, PCL_PHY_R06, RX_EQ_ADJ,
       FIELD_PREP(RX_EQ_ADJ, RX_EQ_ADJ_VAL));
 uniphier_pciephy_set_param(priv, PCL_PHY_R26, VCO_CTRL,
       FIELD_PREP(VCO_CTRL, VCO_CTRL_INIT_VAL));
 usleep_range(1, 10);

 uniphier_pciephy_deassert(priv);
 usleep_range(1, 10);

 return 0;

out_clk_disable:
 clk_disable_unprepare(priv->clk);

 return ret;
}
