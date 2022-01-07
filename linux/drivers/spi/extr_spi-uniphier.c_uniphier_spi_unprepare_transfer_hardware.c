
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_spi_priv {scalar_t__ base; } ;
struct spi_master {int dummy; } ;


 scalar_t__ SSI_CTL ;
 struct uniphier_spi_priv* spi_master_get_devdata (struct spi_master*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int uniphier_spi_unprepare_transfer_hardware(struct spi_master *master)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(master);

 writel(0, priv->base + SSI_CTL);

 return 0;
}
