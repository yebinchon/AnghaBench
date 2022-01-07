
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy {int dummy; } ;
struct ltq_rcu_usb2_priv {int phy_gate_clk; int phy_reset; } ;


 int clk_disable_unprepare (int ) ;
 struct ltq_rcu_usb2_priv* phy_get_drvdata (struct phy*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int ltq_rcu_usb2_phy_power_off(struct phy *phy)
{
 struct ltq_rcu_usb2_priv *priv = phy_get_drvdata(phy);

 reset_control_assert(priv->phy_reset);

 clk_disable_unprepare(priv->phy_gate_clk);

 return 0;
}
