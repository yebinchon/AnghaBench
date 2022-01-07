
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sas_task {int (* task_done ) (struct sas_task*) ;} ;
struct pm8001_hba_info {int lock; } ;
struct pm8001_ccb_info {int dummy; } ;


 int pm8001_ccb_task_free (struct pm8001_hba_info*,struct sas_task*,struct pm8001_ccb_info*,int ) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct sas_task*) ;

__attribute__((used)) static inline void
pm8001_ccb_task_free_done(struct pm8001_hba_info *pm8001_ha,
   struct sas_task *task, struct pm8001_ccb_info *ccb,
   u32 ccb_idx)
{
 pm8001_ccb_task_free(pm8001_ha, task, ccb, ccb_idx);
 smp_mb();
 spin_unlock(&pm8001_ha->lock);
 task->task_done(task);
 spin_lock(&pm8001_ha->lock);
}
