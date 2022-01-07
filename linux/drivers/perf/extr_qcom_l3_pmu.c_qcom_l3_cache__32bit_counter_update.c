
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int idx; int prev_count; } ;
struct perf_event {int count; TYPE_1__ hw; int pmu; } ;
struct l3cache_pmu {scalar_t__ regs; } ;


 scalar_t__ L3_HML3_PM_EVCNTR (int) ;
 int local64_add (scalar_t__,int *) ;
 scalar_t__ local64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ local64_read (int *) ;
 scalar_t__ readl_relaxed (scalar_t__) ;
 struct l3cache_pmu* to_l3cache_pmu (int ) ;

__attribute__((used)) static void qcom_l3_cache__32bit_counter_update(struct perf_event *event)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(event->pmu);
 int idx = event->hw.idx;
 u32 prev, new;

 do {
  prev = local64_read(&event->hw.prev_count);
  new = readl_relaxed(l3pmu->regs + L3_HML3_PM_EVCNTR(idx));
 } while (local64_cmpxchg(&event->hw.prev_count, prev, new) != prev);

 local64_add(new - prev, &event->count);
}
