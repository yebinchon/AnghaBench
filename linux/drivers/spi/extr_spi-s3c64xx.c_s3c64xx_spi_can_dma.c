
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct s3c64xx_spi_driver_data {int dummy; } ;


 int FIFO_LVL_MASK (struct s3c64xx_spi_driver_data*) ;
 struct s3c64xx_spi_driver_data* spi_master_get_devdata (struct spi_master*) ;

__attribute__((used)) static bool s3c64xx_spi_can_dma(struct spi_master *master,
    struct spi_device *spi,
    struct spi_transfer *xfer)
{
 struct s3c64xx_spi_driver_data *sdd = spi_master_get_devdata(master);

 return xfer->len > (FIFO_LVL_MASK(sdd) >> 1) + 1;
}
