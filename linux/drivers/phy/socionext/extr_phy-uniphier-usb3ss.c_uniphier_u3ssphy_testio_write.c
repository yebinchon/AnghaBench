
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_u3ssphy_priv {scalar_t__ base; } ;


 scalar_t__ SSPHY_TESTI ;
 scalar_t__ SSPHY_TESTO ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void uniphier_u3ssphy_testio_write(struct uniphier_u3ssphy_priv *priv,
       u32 data)
{

 writel(data, priv->base + SSPHY_TESTI);
 readl(priv->base + SSPHY_TESTO);
 readl(priv->base + SSPHY_TESTO);
}
