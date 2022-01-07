
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_hcd {int tasklet; } ;


 int tasklet_hi_schedule (int *) ;

void c67x00_sched_kick(struct c67x00_hcd *c67x00)
{
 tasklet_hi_schedule(&c67x00->tasklet);
}
