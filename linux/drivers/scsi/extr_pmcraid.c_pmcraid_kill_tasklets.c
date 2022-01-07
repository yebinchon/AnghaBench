
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int num_hrrq; int * isr_tasklet; } ;


 int tasklet_kill (int *) ;

__attribute__((used)) static void pmcraid_kill_tasklets(struct pmcraid_instance *pinstance)
{
 int i;
 for (i = 0; i < pinstance->num_hrrq; i++)
  tasklet_kill(&pinstance->isr_tasklet[i]);
}
