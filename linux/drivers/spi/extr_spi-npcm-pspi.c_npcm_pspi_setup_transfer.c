
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ bits_per_word; scalar_t__ speed_hz; int len; int rx_buf; int tx_buf; } ;
struct spi_device {scalar_t__ mode; int master; } ;
struct npcm_pspi {int is_save_param; scalar_t__ mode; scalar_t__ bits_per_word; scalar_t__ speed_hz; int rx_bytes; int tx_bytes; int rx_buf; int tx_buf; } ;


 int npcm_pspi_set_baudrate (struct npcm_pspi*,scalar_t__) ;
 int npcm_pspi_set_mode (struct spi_device*) ;
 int npcm_pspi_set_transfer_size (struct npcm_pspi*,scalar_t__) ;
 struct npcm_pspi* spi_master_get_devdata (int ) ;

__attribute__((used)) static void npcm_pspi_setup_transfer(struct spi_device *spi,
         struct spi_transfer *t)
{
 struct npcm_pspi *priv = spi_master_get_devdata(spi->master);

 priv->tx_buf = t->tx_buf;
 priv->rx_buf = t->rx_buf;
 priv->tx_bytes = t->len;
 priv->rx_bytes = t->len;

 if (!priv->is_save_param || priv->mode != spi->mode) {
  npcm_pspi_set_mode(spi);
  priv->mode = spi->mode;
 }

 if (!priv->is_save_param || priv->bits_per_word != t->bits_per_word) {
  npcm_pspi_set_transfer_size(priv, t->bits_per_word);
  priv->bits_per_word = t->bits_per_word;
 }

 if (!priv->is_save_param || priv->speed_hz != t->speed_hz) {
  npcm_pspi_set_baudrate(priv, t->speed_hz);
  priv->speed_hz = t->speed_hz;
 }

 if (!priv->is_save_param)
  priv->is_save_param = 1;
}
