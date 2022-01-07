
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int kworker_task; int kworker; int dev; } ;


 int dev_err (int *,char*) ;
 int kthread_flush_worker (int *) ;
 int kthread_stop (int ) ;
 int spi_stop_queue (struct spi_controller*) ;

__attribute__((used)) static int spi_destroy_queue(struct spi_controller *ctlr)
{
 int ret;

 ret = spi_stop_queue(ctlr);







 if (ret) {
  dev_err(&ctlr->dev, "problem destroying queue\n");
  return ret;
 }

 kthread_flush_worker(&ctlr->kworker);
 kthread_stop(ctlr->kworker_task);

 return 0;
}
