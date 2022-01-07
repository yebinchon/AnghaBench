
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dummy; } ;
struct fsl_lpspi_data {int dev; int xfer_done; scalar_t__ slave_aborted; scalar_t__ is_slave; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_dbg (int ,char*) ;
 struct fsl_lpspi_data* spi_controller_get_devdata (struct spi_controller*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int fsl_lpspi_wait_for_completion(struct spi_controller *controller)
{
 struct fsl_lpspi_data *fsl_lpspi =
    spi_controller_get_devdata(controller);

 if (fsl_lpspi->is_slave) {
  if (wait_for_completion_interruptible(&fsl_lpspi->xfer_done) ||
   fsl_lpspi->slave_aborted) {
   dev_dbg(fsl_lpspi->dev, "interrupted\n");
   return -EINTR;
  }
 } else {
  if (!wait_for_completion_timeout(&fsl_lpspi->xfer_done, HZ)) {
   dev_dbg(fsl_lpspi->dev, "wait for completion timeout\n");
   return -ETIMEDOUT;
  }
 }

 return 0;
}
