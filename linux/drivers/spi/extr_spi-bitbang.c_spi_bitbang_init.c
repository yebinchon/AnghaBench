
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_master {int mode_bits; int cleanup; scalar_t__ setup; int set_cs; int transfer_one; int unprepare_transfer_hardware; int prepare_transfer_hardware; scalar_t__ transfer_one_message; scalar_t__ transfer; } ;
struct spi_bitbang {int flags; scalar_t__ setup_transfer; scalar_t__ txrx_bufs; scalar_t__ use_dma; int lock; int chipselect; struct spi_master* master; } ;


 int EINVAL ;
 int SPI_CPHA ;
 int SPI_CPOL ;
 int mutex_init (int *) ;
 scalar_t__ spi_bitbang_bufs ;
 int spi_bitbang_cleanup ;
 int spi_bitbang_prepare_hardware ;
 int spi_bitbang_set_cs ;
 scalar_t__ spi_bitbang_setup ;
 scalar_t__ spi_bitbang_setup_transfer ;
 int spi_bitbang_transfer_one ;
 int spi_bitbang_unprepare_hardware ;

int spi_bitbang_init(struct spi_bitbang *bitbang)
{
 struct spi_master *master = bitbang->master;

 if (!master || !bitbang->chipselect)
  return -EINVAL;

 mutex_init(&bitbang->lock);

 if (!master->mode_bits)
  master->mode_bits = SPI_CPOL | SPI_CPHA | bitbang->flags;

 if (master->transfer || master->transfer_one_message)
  return -EINVAL;

 master->prepare_transfer_hardware = spi_bitbang_prepare_hardware;
 master->unprepare_transfer_hardware = spi_bitbang_unprepare_hardware;
 master->transfer_one = spi_bitbang_transfer_one;
 master->set_cs = spi_bitbang_set_cs;

 if (!bitbang->txrx_bufs) {
  bitbang->use_dma = 0;
  bitbang->txrx_bufs = spi_bitbang_bufs;
  if (!master->setup) {
   if (!bitbang->setup_transfer)
    bitbang->setup_transfer =
      spi_bitbang_setup_transfer;
   master->setup = spi_bitbang_setup;
   master->cleanup = spi_bitbang_cleanup;
  }
 }

 return 0;
}
