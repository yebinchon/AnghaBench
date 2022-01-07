
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spi_transfer {int len; int rx_buf; int tx_buf; } ;
struct spi_imx_data {int count; int slave_aborted; TYPE_1__* devtype_data; int xfer_done; scalar_t__ remainder; scalar_t__ txfifo; int rx_buf; int tx_buf; } ;
struct spi_device {int dev; int master; } ;
struct TYPE_2__ {int (* disable ) (struct spi_imx_data*) ;int (* intctrl ) (struct spi_imx_data*,int) ;} ;


 int EINTR ;
 int EMSGSIZE ;
 int MX53_MAX_TRANSFER_BYTES ;
 int MXC_INT_RDR ;
 int MXC_INT_TE ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ is_imx53_ecspi (struct spi_imx_data*) ;
 int reinit_completion (int *) ;
 int spi_imx_push (struct spi_imx_data*) ;
 struct spi_imx_data* spi_master_get_devdata (int ) ;
 int stub1 (struct spi_imx_data*,int) ;
 int stub2 (struct spi_imx_data*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int spi_imx_pio_transfer_slave(struct spi_device *spi,
          struct spi_transfer *transfer)
{
 struct spi_imx_data *spi_imx = spi_master_get_devdata(spi->master);
 int ret = transfer->len;

 if (is_imx53_ecspi(spi_imx) &&
     transfer->len > MX53_MAX_TRANSFER_BYTES) {
  dev_err(&spi->dev, "Transaction too big, max size is %d bytes\n",
   MX53_MAX_TRANSFER_BYTES);
  return -EMSGSIZE;
 }

 spi_imx->tx_buf = transfer->tx_buf;
 spi_imx->rx_buf = transfer->rx_buf;
 spi_imx->count = transfer->len;
 spi_imx->txfifo = 0;
 spi_imx->remainder = 0;

 reinit_completion(&spi_imx->xfer_done);
 spi_imx->slave_aborted = 0;

 spi_imx_push(spi_imx);

 spi_imx->devtype_data->intctrl(spi_imx, MXC_INT_TE | MXC_INT_RDR);

 if (wait_for_completion_interruptible(&spi_imx->xfer_done) ||
     spi_imx->slave_aborted) {
  dev_dbg(&spi->dev, "interrupted\n");
  ret = -EINTR;
 }







 if (spi_imx->devtype_data->disable)
  spi_imx->devtype_data->disable(spi_imx);

 return ret;
}
