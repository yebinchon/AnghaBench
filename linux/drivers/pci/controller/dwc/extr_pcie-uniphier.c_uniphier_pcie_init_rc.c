
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pcie_priv {scalar_t__ base; } ;


 scalar_t__ PCL_APP_PM0 ;
 int PCL_PERST_NOE_REGEN ;
 int PCL_PERST_NOE_REGVAL ;
 int PCL_PERST_OUT_REGEN ;
 int PCL_PERST_OUT_REGVAL ;
 int PCL_PERST_PLDN_REGEN ;
 int PCL_PERST_PLDN_REGVAL ;
 scalar_t__ PCL_PINCTRL0 ;
 int PCL_SYS_AUX_PWR_DET ;
 int readl (scalar_t__) ;
 int uniphier_pcie_ltssm_enable (struct uniphier_pcie_priv*,int) ;
 int usleep_range (int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
{
 u32 val;


 val = readl(priv->base + PCL_APP_PM0);
 val |= PCL_SYS_AUX_PWR_DET;
 writel(val, priv->base + PCL_APP_PM0);


 val = readl(priv->base + PCL_PINCTRL0);
 val &= ~(PCL_PERST_NOE_REGVAL | PCL_PERST_OUT_REGVAL
   | PCL_PERST_PLDN_REGVAL);
 val |= PCL_PERST_NOE_REGEN | PCL_PERST_OUT_REGEN
  | PCL_PERST_PLDN_REGEN;
 writel(val, priv->base + PCL_PINCTRL0);

 uniphier_pcie_ltssm_enable(priv, 0);

 usleep_range(100000, 200000);


 val = readl(priv->base + PCL_PINCTRL0);
 val |= PCL_PERST_OUT_REGVAL | PCL_PERST_OUT_REGEN;
 writel(val, priv->base + PCL_PINCTRL0);
}
