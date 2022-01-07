
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {scalar_t__ base; int clk; } ;
struct spi_device {int master; } ;


 int DIV_ROUND_UP (int ,unsigned int) ;
 scalar_t__ SSI_CKS ;
 int SSI_CKS_CKRAT_MASK ;
 int clk_get_rate (int ) ;
 int readl (scalar_t__) ;
 int round_up (int,int) ;
 struct uniphier_spi_priv* spi_master_get_devdata (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_spi_set_baudrate(struct spi_device *spi,
          unsigned int speed)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 u32 val, ckdiv;





 ckdiv = DIV_ROUND_UP(clk_get_rate(priv->clk), speed);
 ckdiv = round_up(ckdiv, 2);

 val = readl(priv->base + SSI_CKS);
 val &= ~SSI_CKS_CKRAT_MASK;
 val |= ckdiv & SSI_CKS_CKRAT_MASK;
 writel(val, priv->base + SSI_CKS);
}
