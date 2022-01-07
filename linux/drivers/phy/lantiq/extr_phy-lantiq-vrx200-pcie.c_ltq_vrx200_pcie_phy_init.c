
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct phy {int dummy; } ;
struct ltq_vrx200_pcie_phy_priv {int rcu_ahb_endian_big_endian_mask; int phy_reset; int pcie_reset; int rcu_ahb_endian_offset; int rcu_regmap; TYPE_1__* dev; } ;
struct TYPE_2__ {int of_node; } ;


 scalar_t__ of_device_is_big_endian (int ) ;
 struct ltq_vrx200_pcie_phy_priv* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int udelay (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ltq_vrx200_pcie_phy_init(struct phy *phy)
{
 struct ltq_vrx200_pcie_phy_priv *priv = phy_get_drvdata(phy);
 int ret;

 if (of_device_is_big_endian(priv->dev->of_node))
  regmap_update_bits(priv->rcu_regmap,
       priv->rcu_ahb_endian_offset,
       priv->rcu_ahb_endian_big_endian_mask,
       priv->rcu_ahb_endian_big_endian_mask);
 else
  regmap_update_bits(priv->rcu_regmap,
       priv->rcu_ahb_endian_offset,
       priv->rcu_ahb_endian_big_endian_mask, 0x0);

 ret = reset_control_assert(priv->phy_reset);
 if (ret)
  goto err;

 udelay(1);

 ret = reset_control_deassert(priv->phy_reset);
 if (ret)
  goto err;

 udelay(1);

 ret = reset_control_deassert(priv->pcie_reset);
 if (ret)
  goto err_assert_phy_reset;


 usleep_range(20, 40);

 return 0;

err_assert_phy_reset:
 reset_control_assert(priv->phy_reset);
err:
 return ret;
}
