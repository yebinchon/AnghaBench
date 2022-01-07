
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_controller {int kworker_task; int dev; } ;
struct sched_param {int sched_priority; } ;


 int MAX_RT_PRIO ;
 int SCHED_FIFO ;
 int dev_info (int *,char*) ;
 int sched_setscheduler (int ,int ,struct sched_param*) ;

__attribute__((used)) static void spi_set_thread_rt(struct spi_controller *ctlr)
{
 struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };

 dev_info(&ctlr->dev,
  "will run message pump with realtime priority\n");
 sched_setscheduler(ctlr->kworker_task, SCHED_FIFO, &param);
}
