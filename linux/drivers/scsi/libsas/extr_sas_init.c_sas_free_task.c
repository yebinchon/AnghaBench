
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int slow_task; } ;


 int kfree (int ) ;
 int kmem_cache_free (int ,struct sas_task*) ;
 int sas_task_cache ;

void sas_free_task(struct sas_task *task)
{
 if (task) {
  kfree(task->slow_task);
  kmem_cache_free(sas_task_cache, task);
 }
}
