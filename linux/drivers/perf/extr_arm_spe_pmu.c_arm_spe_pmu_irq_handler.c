
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int aux_flags; struct perf_event* event; } ;
struct perf_event {int dummy; } ;
typedef int irqreturn_t ;
typedef enum arm_spe_pmu_buf_fault_action { ____Placeholder_arm_spe_pmu_buf_fault_action } arm_spe_pmu_buf_fault_action ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PERF_AUX_FLAG_TRUNCATED ;



 int SYS_PMBSR_EL1 ;
 int arm_spe_perf_aux_output_begin (struct perf_output_handle*,struct perf_event*) ;
 int arm_spe_pmu_buf_get_fault_act (struct perf_output_handle*) ;
 int arm_spe_pmu_disable_and_drain_local () ;
 int irq_work_run () ;
 int isb () ;
 int perf_get_aux (struct perf_output_handle*) ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static irqreturn_t arm_spe_pmu_irq_handler(int irq, void *dev)
{
 struct perf_output_handle *handle = dev;
 struct perf_event *event = handle->event;
 enum arm_spe_pmu_buf_fault_action act;

 if (!perf_get_aux(handle))
  return IRQ_NONE;

 act = arm_spe_pmu_buf_get_fault_act(handle);
 if (act == 128)
  return IRQ_NONE;





 irq_work_run();

 switch (act) {
 case 130:







  arm_spe_pmu_disable_and_drain_local();
  break;
 case 129:






  if (!(handle->aux_flags & PERF_AUX_FLAG_TRUNCATED)) {
   arm_spe_perf_aux_output_begin(handle, event);
   isb();
  }
  break;
 case 128:

  break;
 }


 write_sysreg_s(0, SYS_PMBSR_EL1);
 return IRQ_HANDLED;
}
