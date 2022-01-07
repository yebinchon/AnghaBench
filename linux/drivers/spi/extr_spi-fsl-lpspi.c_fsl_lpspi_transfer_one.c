
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int dummy; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int is_first_byte; scalar_t__ usedma; } ;


 int fsl_lpspi_dma_transfer (struct spi_controller*,struct fsl_lpspi_data*,struct spi_transfer*) ;
 int fsl_lpspi_pio_transfer (struct spi_controller*,struct spi_transfer*) ;
 int fsl_lpspi_set_cmd (struct fsl_lpspi_data*) ;
 int fsl_lpspi_setup_transfer (struct spi_controller*,struct spi_device*,struct spi_transfer*) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int fsl_lpspi_transfer_one(struct spi_controller *controller,
      struct spi_device *spi,
      struct spi_transfer *t)
{
 struct fsl_lpspi_data *fsl_lpspi =
     spi_controller_get_devdata(controller);
 int ret;

 fsl_lpspi->is_first_byte = 1;
 ret = fsl_lpspi_setup_transfer(controller, spi, t);
 if (ret < 0)
  return ret;

 fsl_lpspi_set_cmd(fsl_lpspi);
 fsl_lpspi->is_first_byte = 0;

 if (fsl_lpspi->usedma)
  ret = fsl_lpspi_dma_transfer(controller, fsl_lpspi, t);
 else
  ret = fsl_lpspi_pio_transfer(controller, t);
 if (ret < 0)
  return ret;

 return 0;
}
