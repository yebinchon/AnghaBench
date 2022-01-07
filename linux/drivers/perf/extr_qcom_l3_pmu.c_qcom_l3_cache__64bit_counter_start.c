
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int idx; int prev_count; } ;
struct perf_event {TYPE_1__ hw; int pmu; } ;
struct l3cache_pmu {scalar_t__ regs; } ;


 int EVSEL (int ) ;
 int GANG_EN (int) ;
 scalar_t__ L3_HML3_PM_CNTCTL (int) ;
 scalar_t__ L3_HML3_PM_EVCNTR (int) ;
 scalar_t__ L3_HML3_PM_EVTYPE (int) ;
 scalar_t__ L3_M_BC_CNTENSET ;
 scalar_t__ L3_M_BC_GANG ;
 int PMCNTENSET (int) ;
 int PMCNT_RESET ;
 int get_event_type (struct perf_event*) ;
 int local64_set (int *,int ) ;
 int readl_relaxed (scalar_t__) ;
 struct l3cache_pmu* to_l3cache_pmu (int ) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void qcom_l3_cache__64bit_counter_start(struct perf_event *event)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(event->pmu);
 int idx = event->hw.idx;
 u32 evsel = get_event_type(event);
 u32 gang;


 gang = readl_relaxed(l3pmu->regs + L3_M_BC_GANG);
 gang |= GANG_EN(idx + 1);
 writel_relaxed(gang, l3pmu->regs + L3_M_BC_GANG);


 local64_set(&event->hw.prev_count, 0);
 writel_relaxed(0, l3pmu->regs + L3_HML3_PM_EVCNTR(idx + 1));
 writel_relaxed(0, l3pmu->regs + L3_HML3_PM_EVCNTR(idx));





 writel_relaxed(EVSEL(0), l3pmu->regs + L3_HML3_PM_EVTYPE(idx + 1));
 writel_relaxed(EVSEL(evsel), l3pmu->regs + L3_HML3_PM_EVTYPE(idx));


 writel_relaxed(PMCNT_RESET, l3pmu->regs + L3_HML3_PM_CNTCTL(idx + 1));
 writel_relaxed(PMCNTENSET(idx + 1), l3pmu->regs + L3_M_BC_CNTENSET);
 writel_relaxed(PMCNT_RESET, l3pmu->regs + L3_HML3_PM_CNTCTL(idx));
 writel_relaxed(PMCNTENSET(idx), l3pmu->regs + L3_M_BC_CNTENSET);
}
