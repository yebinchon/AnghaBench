
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pcie_priv {scalar_t__ base; } ;


 scalar_t__ PCL_RCV_INT ;
 scalar_t__ PCL_RCV_INTX ;
 int PCL_RCV_INTX_ALL_ENABLE ;
 int PCL_RCV_INT_ALL_ENABLE ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_pcie_irq_enable(struct uniphier_pcie_priv *priv)
{
 writel(PCL_RCV_INT_ALL_ENABLE, priv->base + PCL_RCV_INT);
 writel(PCL_RCV_INTX_ALL_ENABLE, priv->base + PCL_RCV_INTX);
}
