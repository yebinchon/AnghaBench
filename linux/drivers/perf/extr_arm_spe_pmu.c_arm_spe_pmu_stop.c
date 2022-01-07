
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_output_handle {int dummy; } ;
struct hw_perf_event {int state; int period_left; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_spe_pmu {int handle; } ;
typedef enum arm_spe_pmu_buf_fault_action { ____Placeholder_arm_spe_pmu_buf_fault_action } arm_spe_pmu_buf_fault_action ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int PERF_HES_UPTODATE ;
 int SPE_PMU_BUF_FAULT_ACT_SPURIOUS ;
 int SYS_PMBSR_EL1 ;
 int SYS_PMSICR_EL1 ;
 int arm_spe_perf_aux_output_end (struct perf_output_handle*) ;
 int arm_spe_pmu_buf_get_fault_act (struct perf_output_handle*) ;
 int arm_spe_pmu_disable_and_drain_local () ;
 int local64_set (int *,int ) ;
 scalar_t__ perf_get_aux (struct perf_output_handle*) ;
 int read_sysreg_s (int ) ;
 struct perf_output_handle* this_cpu_ptr (int ) ;
 struct arm_spe_pmu* to_spe_pmu (int ) ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static void arm_spe_pmu_stop(struct perf_event *event, int flags)
{
 struct arm_spe_pmu *spe_pmu = to_spe_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 struct perf_output_handle *handle = this_cpu_ptr(spe_pmu->handle);


 if (hwc->state & PERF_HES_STOPPED)
  return;


 arm_spe_pmu_disable_and_drain_local();

 if (flags & PERF_EF_UPDATE) {





  if (perf_get_aux(handle)) {
   enum arm_spe_pmu_buf_fault_action act;

   act = arm_spe_pmu_buf_get_fault_act(handle);
   if (act == SPE_PMU_BUF_FAULT_ACT_SPURIOUS)
    arm_spe_perf_aux_output_end(handle);
   else
    write_sysreg_s(0, SYS_PMBSR_EL1);
  }






  local64_set(&hwc->period_left, read_sysreg_s(SYS_PMSICR_EL1));
  hwc->state |= PERF_HES_UPTODATE;
 }

 hwc->state |= PERF_HES_STOPPED;
}
