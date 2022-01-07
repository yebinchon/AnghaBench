
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int slave_aborted; int xfer_done; int remain; int rx_buf; int tx_buf; } ;


 int fsl_lpspi_reset (struct fsl_lpspi_data*) ;
 int fsl_lpspi_wait_for_completion (struct spi_controller*) ;
 int fsl_lpspi_write_tx_fifo (struct fsl_lpspi_data*) ;
 int reinit_completion (int *) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int fsl_lpspi_pio_transfer(struct spi_controller *controller,
      struct spi_transfer *t)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(controller);
 int ret;

 fsl_lpspi->tx_buf = t->tx_buf;
 fsl_lpspi->rx_buf = t->rx_buf;
 fsl_lpspi->remain = t->len;

 reinit_completion(&fsl_lpspi->xfer_done);
 fsl_lpspi->slave_aborted = 0;

 fsl_lpspi_write_tx_fifo(fsl_lpspi);

 ret = fsl_lpspi_wait_for_completion(controller);
 if (ret)
  return ret;

 fsl_lpspi_reset(fsl_lpspi);

 return 0;
}
