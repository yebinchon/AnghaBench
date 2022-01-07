
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_pciephy_priv {scalar_t__ base; } ;


 scalar_t__ PCL_PHY_TEST_I ;
 scalar_t__ PCL_PHY_TEST_O ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_pciephy_testio_write(struct uniphier_pciephy_priv *priv,
       u32 data)
{

 writel(data, priv->base + PCL_PHY_TEST_I);
 readl(priv->base + PCL_PHY_TEST_O);
 readl(priv->base + PCL_PHY_TEST_O);
}
