
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct qla_hw_data {struct task_struct* dpc_thread; int * dpc_hp_wq; int nic_core_unrecoverable; int idc_state_handler; int nic_core_reset; int * dpc_lp_wq; int idc_aen; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int *) ;
 int kthread_stop (struct task_struct*) ;

__attribute__((used)) static void
qla2x00_destroy_deferred_work(struct qla_hw_data *ha)
{

 if (ha->dpc_lp_wq) {
  cancel_work_sync(&ha->idc_aen);
  destroy_workqueue(ha->dpc_lp_wq);
  ha->dpc_lp_wq = ((void*)0);
 }

 if (ha->dpc_hp_wq) {
  cancel_work_sync(&ha->nic_core_reset);
  cancel_work_sync(&ha->idc_state_handler);
  cancel_work_sync(&ha->nic_core_unrecoverable);
  destroy_workqueue(ha->dpc_hp_wq);
  ha->dpc_hp_wq = ((void*)0);
 }


 if (ha->dpc_thread) {
  struct task_struct *t = ha->dpc_thread;





  ha->dpc_thread = ((void*)0);
  kthread_stop(t);
 }
}
