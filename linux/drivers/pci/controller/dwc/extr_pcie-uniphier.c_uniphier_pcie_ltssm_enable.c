
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pcie_priv {scalar_t__ base; } ;


 int PCL_APP_LTSSM_ENABLE ;
 scalar_t__ PCL_APP_READY_CTRL ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_pcie_ltssm_enable(struct uniphier_pcie_priv *priv,
           bool enable)
{
 u32 val;

 val = readl(priv->base + PCL_APP_READY_CTRL);
 if (enable)
  val |= PCL_APP_LTSSM_ENABLE;
 else
  val &= ~PCL_APP_LTSSM_ENABLE;
 writel(val, priv->base + PCL_APP_READY_CTRL);
}
