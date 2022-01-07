
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct spi_transfer {unsigned int len; int * rx_buf; int * tx_buf; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct sifive_spi {int fifo_depth; } ;


 int SIFIVE_SPI_IP_RXWM ;
 int SIFIVE_SPI_IP_TXWM ;
 int SIFIVE_SPI_REG_RXMARK ;
 unsigned int min (unsigned int,int ) ;
 int sifive_spi_prep_transfer (struct sifive_spi*,struct spi_device*,struct spi_transfer*) ;
 int sifive_spi_rx (struct sifive_spi*,int ) ;
 int sifive_spi_tx (struct sifive_spi*,int ) ;
 int sifive_spi_wait (struct sifive_spi*,int ,int) ;
 int sifive_spi_write (struct sifive_spi*,int ,unsigned int) ;
 struct sifive_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static int
sifive_spi_transfer_one(struct spi_master *master, struct spi_device *device,
   struct spi_transfer *t)
{
 struct sifive_spi *spi = spi_master_get_devdata(master);
 int poll = sifive_spi_prep_transfer(spi, device, t);
 const u8 *tx_ptr = t->tx_buf;
 u8 *rx_ptr = t->rx_buf;
 unsigned int remaining_words = t->len;

 while (remaining_words) {
  unsigned int n_words = min(remaining_words, spi->fifo_depth);
  unsigned int i;


  for (i = 0; i < n_words; i++)
   sifive_spi_tx(spi, tx_ptr++);

  if (rx_ptr) {

   sifive_spi_write(spi, SIFIVE_SPI_REG_RXMARK,
      n_words - 1);
   sifive_spi_wait(spi, SIFIVE_SPI_IP_RXWM, poll);


   for (i = 0; i < n_words; i++)
    sifive_spi_rx(spi, rx_ptr++);
  } else {

   sifive_spi_wait(spi, SIFIVE_SPI_IP_TXWM, poll);
  }

  remaining_words -= n_words;
 }

 return 0;
}
