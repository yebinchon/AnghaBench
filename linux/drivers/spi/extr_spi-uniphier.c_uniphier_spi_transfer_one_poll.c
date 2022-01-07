
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_spi_priv {scalar_t__ tx_bytes; scalar_t__ rx_bytes; scalar_t__ base; } ;
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 int SSI_POLL_TIMEOUT_US ;
 scalar_t__ SSI_SR ;
 int SSI_SR_RNE ;
 int ndelay (int) ;
 int readl (scalar_t__) ;
 struct uniphier_spi_priv* spi_master_get_devdata (struct spi_master*) ;
 int uniphier_spi_fill_tx_fifo (struct uniphier_spi_priv*) ;
 int uniphier_spi_recv (struct uniphier_spi_priv*) ;
 int uniphier_spi_transfer_one_irq (struct spi_master*,struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int uniphier_spi_transfer_one_poll(struct spi_master *master,
       struct spi_device *spi,
       struct spi_transfer *t)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(master);
 int loop = SSI_POLL_TIMEOUT_US * 10;

 while (priv->tx_bytes) {
  uniphier_spi_fill_tx_fifo(priv);

  while ((priv->rx_bytes - priv->tx_bytes) > 0) {
   while (!(readl(priv->base + SSI_SR) & SSI_SR_RNE)
        && loop--)
    ndelay(100);

   if (loop == -1)
    goto irq_transfer;

   uniphier_spi_recv(priv);
  }
 }

 return 0;

irq_transfer:
 return uniphier_spi_transfer_one_irq(master, spi, t);
}
