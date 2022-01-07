
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_output_handle {int dummy; } ;
struct hw_perf_event {int period_left; scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_spe_pmu {int handle; } ;


 int PERF_EF_RELOAD ;
 int SYS_PMSCR_EL1 ;
 int SYS_PMSEVFR_EL1 ;
 int SYS_PMSFCR_EL1 ;
 int SYS_PMSICR_EL1 ;
 int SYS_PMSIRR_EL1 ;
 int SYS_PMSLATFR_EL1 ;
 int arm_spe_event_to_pmscr (struct perf_event*) ;
 int arm_spe_event_to_pmsevfr (struct perf_event*) ;
 int arm_spe_event_to_pmsfcr (struct perf_event*) ;
 int arm_spe_event_to_pmsirr (struct perf_event*) ;
 int arm_spe_event_to_pmslatfr (struct perf_event*) ;
 int arm_spe_perf_aux_output_begin (struct perf_output_handle*,struct perf_event*) ;
 int isb () ;
 int local64_read (int *) ;
 struct perf_output_handle* this_cpu_ptr (int ) ;
 struct arm_spe_pmu* to_spe_pmu (int ) ;
 int write_sysreg_s (int ,int ) ;

__attribute__((used)) static void arm_spe_pmu_start(struct perf_event *event, int flags)
{
 u64 reg;
 struct arm_spe_pmu *spe_pmu = to_spe_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 struct perf_output_handle *handle = this_cpu_ptr(spe_pmu->handle);

 hwc->state = 0;
 arm_spe_perf_aux_output_begin(handle, event);
 if (hwc->state)
  return;

 reg = arm_spe_event_to_pmsfcr(event);
 write_sysreg_s(reg, SYS_PMSFCR_EL1);

 reg = arm_spe_event_to_pmsevfr(event);
 write_sysreg_s(reg, SYS_PMSEVFR_EL1);

 reg = arm_spe_event_to_pmslatfr(event);
 write_sysreg_s(reg, SYS_PMSLATFR_EL1);

 if (flags & PERF_EF_RELOAD) {
  reg = arm_spe_event_to_pmsirr(event);
  write_sysreg_s(reg, SYS_PMSIRR_EL1);
  isb();
  reg = local64_read(&hwc->period_left);
  write_sysreg_s(reg, SYS_PMSICR_EL1);
 }

 reg = arm_spe_event_to_pmscr(event);
 isb();
 write_sysreg_s(reg, SYS_PMSCR_EL1);
}
