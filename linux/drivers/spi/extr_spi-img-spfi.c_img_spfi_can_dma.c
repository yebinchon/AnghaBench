
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 scalar_t__ SPFI_32BIT_FIFO_SIZE ;

__attribute__((used)) static bool img_spfi_can_dma(struct spi_master *master, struct spi_device *spi,
        struct spi_transfer *xfer)
{
 if (xfer->len > SPFI_32BIT_FIFO_SIZE)
  return 1;
 return 0;
}
