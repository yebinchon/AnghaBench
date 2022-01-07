
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_device {int master; } ;
struct sirfsoc_spi {int left_tx_word; int left_rx_word; int word_width; scalar_t__ type; scalar_t__ tx_by_cmd; int tx_done; int rx_done; int rx; int tx; } ;


 scalar_t__ IS_DMA_VALID (struct spi_transfer*) ;
 scalar_t__ SIRF_REAL_SPI ;
 int reinit_completion (int *) ;
 struct sirfsoc_spi* spi_master_get_devdata (int ) ;
 int spi_sirfsoc_cmd_transfer (struct spi_device*,struct spi_transfer*) ;
 int spi_sirfsoc_dma_transfer (struct spi_device*,struct spi_transfer*) ;
 int spi_sirfsoc_pio_transfer (struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int spi_sirfsoc_transfer(struct spi_device *spi, struct spi_transfer *t)
{
 struct sirfsoc_spi *sspi;

 sspi = spi_master_get_devdata(spi->master);
 sspi->tx = t->tx_buf;
 sspi->rx = t->rx_buf;
 sspi->left_tx_word = sspi->left_rx_word = t->len / sspi->word_width;
 reinit_completion(&sspi->rx_done);
 reinit_completion(&sspi->tx_done);





 if (sspi->type == SIRF_REAL_SPI && sspi->tx_by_cmd)
  spi_sirfsoc_cmd_transfer(spi, t);
 else if (IS_DMA_VALID(t))
  spi_sirfsoc_dma_transfer(spi, t);
 else
  spi_sirfsoc_pio_transfer(spi, t);

 return t->len - sspi->left_rx_word * sspi->word_width;
}
