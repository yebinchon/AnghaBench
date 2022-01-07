
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {scalar_t__ len; } ;
struct spi_master {int dma_rx; } ;
struct spi_imx_data {scalar_t__ dynamic_burst; TYPE_1__* devtype_data; scalar_t__ slave_mode; } ;
struct spi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ fifo_size; } ;


 struct spi_imx_data* spi_master_get_devdata (struct spi_master*) ;
 int use_dma ;

__attribute__((used)) static bool spi_imx_can_dma(struct spi_master *master, struct spi_device *spi,
    struct spi_transfer *transfer)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(master);

 if (!use_dma)
  return 0;

 if (!master->dma_rx)
  return 0;

 if (spi_imx->slave_mode)
  return 0;

 if (transfer->len < spi_imx->devtype_data->fifo_size)
  return 0;

 spi_imx->dynamic_burst = 0;

 return 1;
}
