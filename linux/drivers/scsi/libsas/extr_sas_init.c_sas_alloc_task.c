
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_task {int task_state_flags; int task_state_lock; } ;
typedef int gfp_t ;


 int SAS_TASK_STATE_PENDING ;
 struct sas_task* kmem_cache_zalloc (int ,int ) ;
 int sas_task_cache ;
 int spin_lock_init (int *) ;

struct sas_task *sas_alloc_task(gfp_t flags)
{
 struct sas_task *task = kmem_cache_zalloc(sas_task_cache, flags);

 if (task) {
  spin_lock_init(&task->task_state_lock);
  task->task_state_flags = SAS_TASK_STATE_PENDING;
 }

 return task;
}
