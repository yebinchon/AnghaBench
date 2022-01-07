
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {scalar_t__ base; } ;
struct spi_device {int master; } ;


 scalar_t__ SSI_IE ;
 int readl (scalar_t__) ;
 struct uniphier_spi_priv* spi_master_get_devdata (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void uniphier_spi_irq_enable(struct spi_device *spi, u32 mask)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 u32 val;

 val = readl(priv->base + SSI_IE);
 val |= mask;
 writel(val, priv->base + SSI_IE);
}
