
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_spi_slave {int dev; scalar_t__ slave_aborted; int xfer_done; } ;


 int EINTR ;
 int dev_err (int ,char*) ;
 scalar_t__ wait_for_completion_interruptible (int *) ;

__attribute__((used)) static int mtk_spi_slave_wait_for_completion(struct mtk_spi_slave *mdata)
{
 if (wait_for_completion_interruptible(&mdata->xfer_done) ||
     mdata->slave_aborted) {
  dev_err(mdata->dev, "interrupted\n");
  return -EINTR;
 }

 return 0;
}
