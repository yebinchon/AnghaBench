
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int running; int busy; scalar_t__ rt; int pump_messages; int kworker_task; int dev; int kworker; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int kthread_init_work (int *,int ) ;
 int kthread_init_worker (int *) ;
 int kthread_run (int ,int *,char*,int ) ;
 int kthread_worker_fn ;
 int spi_pump_messages ;
 int spi_set_thread_rt (struct spi_controller*) ;

__attribute__((used)) static int spi_init_queue(struct spi_controller *ctlr)
{
 ctlr->running = 0;
 ctlr->busy = 0;

 kthread_init_worker(&ctlr->kworker);
 ctlr->kworker_task = kthread_run(kthread_worker_fn, &ctlr->kworker,
      "%s", dev_name(&ctlr->dev));
 if (IS_ERR(ctlr->kworker_task)) {
  dev_err(&ctlr->dev, "failed to create message pump task\n");
  return PTR_ERR(ctlr->kworker_task);
 }
 kthread_init_work(&ctlr->pump_messages, spi_pump_messages);
 if (ctlr->rt)
  spi_set_thread_rt(ctlr);

 return 0;
}
