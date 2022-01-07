
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_instance {int num_hrrq; int * hrrq_vector; int * isr_tasklet; } ;


 int pmcraid_tasklet_function ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static void pmcraid_init_tasklets(struct pmcraid_instance *pinstance)
{
 int i;
 for (i = 0; i < pinstance->num_hrrq; i++)
  tasklet_init(&pinstance->isr_tasklet[i],
        pmcraid_tasklet_function,
        (unsigned long)&pinstance->hrrq_vector[i]);
}
