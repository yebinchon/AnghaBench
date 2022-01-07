
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {TYPE_1__* reg_bits; int phy_reg_offset; int regmap; int ana_cfg1_reg_offset; } ;
struct TYPE_2__ {int host_endianness; int slave_endianness; int hostmode; scalar_t__ have_ana_cfg; } ;


 int BIT (int ) ;
 int RCU_CFG1_DIS_THR_MASK ;
 int RCU_CFG1_DIS_THR_SHIFT ;
 int RCU_CFG1_TX_PEE ;
 struct ltq_rcu_usb2_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ltq_rcu_usb2_phy_init(struct phy *phy)
{
 struct ltq_rcu_usb2_priv *priv = phy_get_drvdata(phy);

 if (priv->reg_bits->have_ana_cfg) {
  regmap_update_bits(priv->regmap, priv->ana_cfg1_reg_offset,
   RCU_CFG1_TX_PEE, RCU_CFG1_TX_PEE);
  regmap_update_bits(priv->regmap, priv->ana_cfg1_reg_offset,
   RCU_CFG1_DIS_THR_MASK, 7 << RCU_CFG1_DIS_THR_SHIFT);
 }


 regmap_update_bits(priv->regmap, priv->phy_reg_offset,
      BIT(priv->reg_bits->hostmode), 0);


 regmap_update_bits(priv->regmap, priv->phy_reg_offset,
  BIT(priv->reg_bits->slave_endianness), 0);
 regmap_update_bits(priv->regmap, priv->phy_reg_offset,
  BIT(priv->reg_bits->host_endianness),
  BIT(priv->reg_bits->host_endianness));

 return 0;
}
