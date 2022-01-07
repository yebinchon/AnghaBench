
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {scalar_t__ len; } ;
struct rspi_data {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ fifo_size; } ;



__attribute__((used)) static bool __rspi_can_dma(const struct rspi_data *rspi,
      const struct spi_transfer *xfer)
{
 return xfer->len > rspi->ops->fifo_size;
}
