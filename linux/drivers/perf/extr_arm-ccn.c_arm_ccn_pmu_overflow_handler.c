
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct perf_event {int dummy; } ;
struct arm_ccn_dt {TYPE_1__* pmu_counters; scalar_t__ base; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct perf_event* event; } ;


 int BIT (int) ;
 int BUILD_BUG_ON (int) ;
 scalar_t__ CCN_DT_PMOVSR ;
 scalar_t__ CCN_DT_PMOVSR_CLR ;
 int CCN_IDX_PMU_CYCLE_COUNTER ;
 int CCN_NUM_PMU_EVENT_COUNTERS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WARN_ON_ONCE (int) ;
 int arm_ccn_pmu_event_update (struct perf_event*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t arm_ccn_pmu_overflow_handler(struct arm_ccn_dt *dt)
{
 u32 pmovsr = readl(dt->base + CCN_DT_PMOVSR);
 int idx;

 if (!pmovsr)
  return IRQ_NONE;

 writel(pmovsr, dt->base + CCN_DT_PMOVSR_CLR);

 BUILD_BUG_ON(CCN_IDX_PMU_CYCLE_COUNTER != CCN_NUM_PMU_EVENT_COUNTERS);

 for (idx = 0; idx < CCN_NUM_PMU_EVENT_COUNTERS + 1; idx++) {
  struct perf_event *event = dt->pmu_counters[idx].event;
  int overflowed = pmovsr & BIT(idx);

  WARN_ON_ONCE(overflowed && !event &&
    idx != CCN_IDX_PMU_CYCLE_COUNTER);

  if (!event || !overflowed)
   continue;

  arm_ccn_pmu_event_update(event);
 }

 return IRQ_HANDLED;
}
