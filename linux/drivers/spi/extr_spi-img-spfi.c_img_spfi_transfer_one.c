
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; } ;
struct spi_master {scalar_t__ (* can_dma ) (struct spi_master*,struct spi_device*,struct spi_transfer*) ;} ;
struct spi_device {int master; } ;
struct img_spfi {int dev; } ;


 int EINVAL ;
 int SPFI_TRANSACTION_TSIZE_MASK ;
 int dev_err (int ,char*,int ,int ) ;
 int img_spfi_config (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int img_spfi_start_dma (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 int img_spfi_start_pio (struct spi_master*,struct spi_device*,struct spi_transfer*) ;
 struct img_spfi* spi_master_get_devdata (int ) ;
 scalar_t__ stub1 (struct spi_master*,struct spi_device*,struct spi_transfer*) ;

__attribute__((used)) static int img_spfi_transfer_one(struct spi_master *master,
     struct spi_device *spi,
     struct spi_transfer *xfer)
{
 struct img_spfi *spfi = spi_master_get_devdata(spi->master);
 int ret;

 if (xfer->len > SPFI_TRANSACTION_TSIZE_MASK) {
  dev_err(spfi->dev,
   "Transfer length (%d) is greater than the max supported (%d)",
   xfer->len, SPFI_TRANSACTION_TSIZE_MASK);
  return -EINVAL;
 }

 img_spfi_config(master, spi, xfer);
 if (master->can_dma && master->can_dma(master, spi, xfer))
  ret = img_spfi_start_dma(master, spi, xfer);
 else
  ret = img_spfi_start_pio(master, spi, xfer);

 return ret;
}
