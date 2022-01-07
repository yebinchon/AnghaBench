
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_slink_data {int tx_status; int rx_status; int dev; int xfer_completion; } ;
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;


 int EIO ;
 int SLINK_DMA_TIMEOUT ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*,int) ;
 int reinit_completion (int *) ;
 struct tegra_slink_data* spi_master_get_devdata (struct spi_master*) ;
 int tegra_slink_start_transfer_one (struct spi_device*,struct spi_transfer*) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int tegra_slink_transfer_one(struct spi_master *master,
        struct spi_device *spi,
        struct spi_transfer *xfer)
{
 struct tegra_slink_data *tspi = spi_master_get_devdata(master);
 int ret;

 reinit_completion(&tspi->xfer_completion);
 ret = tegra_slink_start_transfer_one(spi, xfer);
 if (ret < 0) {
  dev_err(tspi->dev,
   "spi can not start transfer, err %d\n", ret);
  return ret;
 }

 ret = wait_for_completion_timeout(&tspi->xfer_completion,
       SLINK_DMA_TIMEOUT);
 if (WARN_ON(ret == 0)) {
  dev_err(tspi->dev,
   "spi transfer timeout, err %d\n", ret);
  return -EIO;
 }

 if (tspi->tx_status)
  return tspi->tx_status;
 if (tspi->rx_status)
  return tspi->rx_status;

 return 0;
}
