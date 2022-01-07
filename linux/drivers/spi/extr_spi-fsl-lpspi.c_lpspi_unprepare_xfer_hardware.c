
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int dev; } ;


 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;

__attribute__((used)) static int lpspi_unprepare_xfer_hardware(struct spi_controller *controller)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(controller);

 pm_runtime_mark_last_busy(fsl_lpspi->dev);
 pm_runtime_put_autosuspend(fsl_lpspi->dev);

 return 0;
}
