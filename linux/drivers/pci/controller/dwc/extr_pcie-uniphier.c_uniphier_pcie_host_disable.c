
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pcie_priv {int clk; int rst; int phy; } ;


 int clk_disable_unprepare (int ) ;
 int phy_exit (int ) ;
 int reset_control_assert (int ) ;
 int uniphier_pcie_irq_disable (struct uniphier_pcie_priv*) ;

__attribute__((used)) static void uniphier_pcie_host_disable(struct uniphier_pcie_priv *priv)
{
 uniphier_pcie_irq_disable(priv);
 phy_exit(priv->phy);
 reset_control_assert(priv->rst);
 clk_disable_unprepare(priv->clk);
}
