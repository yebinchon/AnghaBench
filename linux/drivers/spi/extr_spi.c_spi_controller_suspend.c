
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int dev; int queued; } ;


 int dev_err (int *,char*) ;
 int spi_stop_queue (struct spi_controller*) ;

int spi_controller_suspend(struct spi_controller *ctlr)
{
 int ret;


 if (!ctlr->queued)
  return 0;

 ret = spi_stop_queue(ctlr);
 if (ret)
  dev_err(&ctlr->dev, "queue stop failed\n");

 return ret;
}
