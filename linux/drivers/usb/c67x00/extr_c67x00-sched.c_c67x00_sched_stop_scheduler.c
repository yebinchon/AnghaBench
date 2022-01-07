
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {int tasklet; } ;


 int tasklet_kill (int *) ;

void c67x00_sched_stop_scheduler(struct c67x00_hcd *c67x00)
{
 tasklet_kill(&c67x00->tasklet);
}
