
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int dev; } ;


 int dev_err (int ,char*) ;
 int pm_runtime_get_sync (int ) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int lpspi_prepare_xfer_hardware(struct spi_controller *controller)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(controller);
 int ret;

 ret = pm_runtime_get_sync(fsl_lpspi->dev);
 if (ret < 0) {
  dev_err(fsl_lpspi->dev, "failed to enable clock\n");
  return ret;
 }

 return 0;
}
