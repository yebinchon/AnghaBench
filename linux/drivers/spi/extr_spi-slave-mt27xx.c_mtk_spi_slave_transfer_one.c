
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {scalar_t__ len; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct mtk_spi_slave {int slave_aborted; struct spi_transfer* cur_transfer; int xfer_done; } ;


 scalar_t__ MTK_SPI_SLAVE_MAX_FIFO_SIZE ;
 int mtk_spi_slave_dma_transfer (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;
 int mtk_spi_slave_fifo_transfer (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;
 int reinit_completion (int *) ;
 struct mtk_spi_slave* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int mtk_spi_slave_transfer_one(struct spi_controller *ctlr,
          struct spi_device *spi,
          struct spi_transfer *xfer)
{
 struct mtk_spi_slave *mdata = spi_controller_get_devdata(ctlr);

 reinit_completion(&mdata->xfer_done);
 mdata->slave_aborted = 0;
 mdata->cur_transfer = xfer;

 if (xfer->len > MTK_SPI_SLAVE_MAX_FIFO_SIZE)
  return mtk_spi_slave_dma_transfer(ctlr, spi, xfer);
 else
  return mtk_spi_slave_fifo_transfer(ctlr, spi, xfer);
}
