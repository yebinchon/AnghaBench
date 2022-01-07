
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ tx_buf; } ;
struct spi_device {int mode; int master; struct spi_bitbang_cs* controller_state; } ;
struct spi_bitbang_cs {unsigned int nsecs; int (* txrx_bufs ) (struct spi_device*,int ,unsigned int,struct spi_transfer*,unsigned int) ;int txrx_word; } ;
struct spi_bitbang {int (* set_line_direction ) (struct spi_device*,int) ;} ;


 int SPI_3WIRE ;
 unsigned int SPI_MASTER_NO_RX ;
 unsigned int SPI_MASTER_NO_TX ;
 struct spi_bitbang* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_device*,int) ;
 int stub2 (struct spi_device*,int ,unsigned int,struct spi_transfer*,unsigned int) ;
 int stub3 (struct spi_device*,int ,unsigned int,struct spi_transfer*,unsigned int) ;

__attribute__((used)) static int spi_bitbang_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct spi_bitbang_cs *cs = spi->controller_state;
 unsigned nsecs = cs->nsecs;
 struct spi_bitbang *bitbang;

 bitbang = spi_master_get_devdata(spi->master);
 if (bitbang->set_line_direction) {
  int err;

  err = bitbang->set_line_direction(spi, !!(t->tx_buf));
  if (err < 0)
   return err;
 }

 if (spi->mode & SPI_3WIRE) {
  unsigned flags;

  flags = t->tx_buf ? SPI_MASTER_NO_RX : SPI_MASTER_NO_TX;
  return cs->txrx_bufs(spi, cs->txrx_word, nsecs, t, flags);
 }
 return cs->txrx_bufs(spi, cs->txrx_word, nsecs, t, 0);
}
