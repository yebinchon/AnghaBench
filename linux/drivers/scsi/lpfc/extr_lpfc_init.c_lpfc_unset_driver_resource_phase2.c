
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_hba {scalar_t__ worker_thread; int * wq; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int kthread_stop (scalar_t__) ;

__attribute__((used)) static void
lpfc_unset_driver_resource_phase2(struct lpfc_hba *phba)
{
 if (phba->wq) {
  flush_workqueue(phba->wq);
  destroy_workqueue(phba->wq);
  phba->wq = ((void*)0);
 }


 if (phba->worker_thread)
  kthread_stop(phba->worker_thread);
}
