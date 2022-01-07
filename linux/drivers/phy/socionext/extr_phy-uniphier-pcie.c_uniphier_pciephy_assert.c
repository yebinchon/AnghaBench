
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pciephy_priv {scalar_t__ base; } ;


 scalar_t__ PCL_PHY_RESET ;
 int PCL_PHY_RESET_N ;
 int PCL_PHY_RESET_N_MNMODE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_pciephy_assert(struct uniphier_pciephy_priv *priv)
{
 u32 val;

 val = readl(priv->base + PCL_PHY_RESET);
 val &= ~PCL_PHY_RESET_N;
 val |= PCL_PHY_RESET_N_MNMODE;
 writel(val, priv->base + PCL_PHY_RESET);
}
