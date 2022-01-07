
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int slave_aborted; int dma_rx_completion; int dma_tx_completion; int xfer_done; int usedma; } ;


 int complete (int *) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int fsl_lpspi_slave_abort(struct spi_controller *controller)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(controller);

 fsl_lpspi->slave_aborted = 1;
 if (!fsl_lpspi->usedma)
  complete(&fsl_lpspi->xfer_done);
 else {
  complete(&fsl_lpspi->dma_tx_completion);
  complete(&fsl_lpspi->dma_rx_completion);
 }

 return 0;
}
