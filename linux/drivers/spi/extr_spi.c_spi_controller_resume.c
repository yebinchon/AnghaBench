
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dev; int queued; } ;


 int dev_err (int *,char*) ;
 int spi_start_queue (struct spi_controller*) ;

int spi_controller_resume(struct spi_controller *ctlr)
{
 int ret;

 if (!ctlr->queued)
  return 0;

 ret = spi_start_queue(ctlr);
 if (ret)
  dev_err(&ctlr->dev, "queue restart failed\n");

 return ret;
}
