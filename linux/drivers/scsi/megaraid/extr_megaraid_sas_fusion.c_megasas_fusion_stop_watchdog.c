
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct megasas_instance {int fw_fault_work; struct workqueue_struct* fw_fault_work_q; } ;


 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (struct workqueue_struct*) ;
 int flush_workqueue (struct workqueue_struct*) ;

void
megasas_fusion_stop_watchdog(struct megasas_instance *instance)
{
 struct workqueue_struct *wq;

 if (instance->fw_fault_work_q) {
  wq = instance->fw_fault_work_q;
  instance->fw_fault_work_q = ((void*)0);
  if (!cancel_delayed_work_sync(&instance->fw_fault_work))
   flush_workqueue(wq);
  destroy_workqueue(wq);
 }
}
