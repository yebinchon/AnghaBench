
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* master; } ;
struct davinci_spi {scalar_t__ version; TYPE_3__ bitbang; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int EBUSY ;
 int EIO ;
 int ETIMEDOUT ;
 int SPIFLG_BITERR_MASK ;
 int SPIFLG_BUF_INIT_ACTIVE_MASK ;
 int SPIFLG_DESYNC_MASK ;
 int SPIFLG_DLEN_ERR_MASK ;
 int SPIFLG_OVRRUN_MASK ;
 int SPIFLG_PARERR_MASK ;
 int SPIFLG_TIMEOUT_MASK ;
 scalar_t__ SPI_VERSION_2 ;
 int dev_err (struct device*,char*) ;

__attribute__((used)) static int davinci_spi_check_error(struct davinci_spi *dspi, int int_status)
{
 struct device *sdev = dspi->bitbang.master->dev.parent;

 if (int_status & SPIFLG_TIMEOUT_MASK) {
  dev_err(sdev, "SPI Time-out Error\n");
  return -ETIMEDOUT;
 }
 if (int_status & SPIFLG_DESYNC_MASK) {
  dev_err(sdev, "SPI Desynchronization Error\n");
  return -EIO;
 }
 if (int_status & SPIFLG_BITERR_MASK) {
  dev_err(sdev, "SPI Bit error\n");
  return -EIO;
 }

 if (dspi->version == SPI_VERSION_2) {
  if (int_status & SPIFLG_DLEN_ERR_MASK) {
   dev_err(sdev, "SPI Data Length Error\n");
   return -EIO;
  }
  if (int_status & SPIFLG_PARERR_MASK) {
   dev_err(sdev, "SPI Parity Error\n");
   return -EIO;
  }
  if (int_status & SPIFLG_OVRRUN_MASK) {
   dev_err(sdev, "SPI Data Overrun error\n");
   return -EIO;
  }
  if (int_status & SPIFLG_BUF_INIT_ACTIVE_MASK) {
   dev_err(sdev, "SPI Buffer Init Active\n");
   return -EBUSY;
  }
 }

 return 0;
}
