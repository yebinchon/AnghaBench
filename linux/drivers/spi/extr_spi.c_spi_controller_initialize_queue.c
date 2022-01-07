
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int queued; int dev; scalar_t__ transfer_one_message; int transfer; } ;


 int dev_err (int *,char*) ;
 int spi_destroy_queue (struct spi_controller*) ;
 int spi_init_queue (struct spi_controller*) ;
 int spi_queued_transfer ;
 int spi_start_queue (struct spi_controller*) ;
 scalar_t__ spi_transfer_one_message ;

__attribute__((used)) static int spi_controller_initialize_queue(struct spi_controller *ctlr)
{
 int ret;

 ctlr->transfer = spi_queued_transfer;
 if (!ctlr->transfer_one_message)
  ctlr->transfer_one_message = spi_transfer_one_message;


 ret = spi_init_queue(ctlr);
 if (ret) {
  dev_err(&ctlr->dev, "problem initializing queue\n");
  goto err_init_queue;
 }
 ctlr->queued = 1;
 ret = spi_start_queue(ctlr);
 if (ret) {
  dev_err(&ctlr->dev, "problem starting queue\n");
  goto err_start_queue;
 }

 return 0;

err_start_queue:
 spi_destroy_queue(ctlr);
err_init_queue:
 return ret;
}
