
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_transfer {unsigned int len; scalar_t__ rx_nbits; } ;
struct spi_device {int chip_select; int master; } ;
struct fsl_espi {unsigned int rxskip; int dev; int done; int lock; } ;


 int ESPI_SPCOM ;
 int ESPI_SPIM ;
 int ETIMEDOUT ;
 unsigned int FSL_ESPI_FIFO_SIZE ;
 int HZ ;
 int SPCOM_CS (int ) ;
 int SPCOM_DO ;
 int SPCOM_RXSKIP (unsigned int) ;
 int SPCOM_TRANLEN (unsigned int) ;
 int SPIM_DON ;
 int SPIM_RXT ;
 scalar_t__ SPI_NBITS_DUAL ;
 int dev_err (int ,char*) ;
 int fsl_espi_fill_tx_fifo (struct fsl_espi*,int ) ;
 int fsl_espi_write_reg (struct fsl_espi*,int ,int ) ;
 int reinit_completion (int *) ;
 struct fsl_espi* spi_master_get_devdata (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int fsl_espi_bufs(struct spi_device *spi, struct spi_transfer *t)
{
 struct fsl_espi *espi = spi_master_get_devdata(spi->master);
 unsigned int rx_len = t->len;
 u32 mask, spcom;
 int ret;

 reinit_completion(&espi->done);


 spcom = SPCOM_CS(spi->chip_select);
 spcom |= SPCOM_TRANLEN(t->len - 1);


 if (espi->rxskip) {
  spcom |= SPCOM_RXSKIP(espi->rxskip);
  rx_len = t->len - espi->rxskip;
  if (t->rx_nbits == SPI_NBITS_DUAL)
   spcom |= SPCOM_DO;
 }

 fsl_espi_write_reg(espi, ESPI_SPCOM, spcom);


 mask = SPIM_DON;
 if (rx_len > FSL_ESPI_FIFO_SIZE)
  mask |= SPIM_RXT;
 fsl_espi_write_reg(espi, ESPI_SPIM, mask);


 spin_lock_irq(&espi->lock);
 fsl_espi_fill_tx_fifo(espi, 0);
 spin_unlock_irq(&espi->lock);


 ret = wait_for_completion_timeout(&espi->done, 2 * HZ);
 if (ret == 0)
  dev_err(espi->dev, "Transfer timed out!\n");


 fsl_espi_write_reg(espi, ESPI_SPIM, 0);

 return ret == 0 ? -ETIMEDOUT : 0;
}
