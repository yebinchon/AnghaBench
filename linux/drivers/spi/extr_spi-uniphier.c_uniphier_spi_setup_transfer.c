
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uniphier_spi_priv {int is_save_param; scalar_t__ mode; scalar_t__ bits_per_word; scalar_t__ speed_hz; scalar_t__ base; int rx_bytes; int tx_bytes; int rx_buf; int tx_buf; scalar_t__ error; } ;
struct spi_transfer {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; int rx_buf; int tx_buf; } ;
struct spi_device {scalar_t__ mode; int master; } ;


 scalar_t__ SSI_FC ;
 int SSI_FC_RXFFL ;
 int SSI_FC_TXFFL ;
 struct uniphier_spi_priv* spi_master_get_devdata (int ) ;
 int uniphier_spi_set_baudrate (struct spi_device*,scalar_t__) ;
 int uniphier_spi_set_mode (struct spi_device*) ;
 int uniphier_spi_set_transfer_size (struct spi_device*,scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void uniphier_spi_setup_transfer(struct spi_device *spi,
           struct spi_transfer *t)
{
 struct uniphier_spi_priv *priv = spi_master_get_devdata(spi->master);
 u32 val;

 priv->error = 0;
 priv->tx_buf = t->tx_buf;
 priv->rx_buf = t->rx_buf;
 priv->tx_bytes = priv->rx_bytes = t->len;

 if (!priv->is_save_param || priv->mode != spi->mode) {
  uniphier_spi_set_mode(spi);
  priv->mode = spi->mode;
  priv->is_save_param = 0;
 }

 if (!priv->is_save_param || priv->bits_per_word != t->bits_per_word) {
  uniphier_spi_set_transfer_size(spi, t->bits_per_word);
  priv->bits_per_word = t->bits_per_word;
 }

 if (!priv->is_save_param || priv->speed_hz != t->speed_hz) {
  uniphier_spi_set_baudrate(spi, t->speed_hz);
  priv->speed_hz = t->speed_hz;
 }

 priv->is_save_param = 1;


 val = SSI_FC_TXFFL | SSI_FC_RXFFL;
 writel(val, priv->base + SSI_FC);
}
