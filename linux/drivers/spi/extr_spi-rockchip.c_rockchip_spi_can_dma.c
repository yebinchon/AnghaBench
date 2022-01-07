
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int bits_per_word; unsigned int len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct rockchip_spi {unsigned int fifo_len; } ;


 struct rockchip_spi* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static bool rockchip_spi_can_dma(struct spi_master *master,
     struct spi_device *spi,
     struct spi_transfer *xfer)
{
 struct rockchip_spi *rs = spi_master_get_devdata(master);
 unsigned int bytes_per_word = xfer->bits_per_word <= 8 ? 1 : 2;





 return xfer->len / bytes_per_word >= rs->fifo_len;
}
