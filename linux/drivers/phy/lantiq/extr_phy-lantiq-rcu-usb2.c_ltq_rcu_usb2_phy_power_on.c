
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {int phy_gate_clk; int phy_reset; struct device* dev; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct ltq_rcu_usb2_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int ltq_rcu_usb2_phy_power_on(struct phy *phy)
{
 struct ltq_rcu_usb2_priv *priv = phy_get_drvdata(phy);
 struct device *dev = priv->dev;
 int ret;

 reset_control_deassert(priv->phy_reset);

 ret = clk_prepare_enable(priv->phy_gate_clk);
 if (ret)
  dev_err(dev, "failed to enable PHY gate\n");

 return ret;
}
