
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int config; } ;
struct hw_perf_event {size_t idx; size_t config_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct TYPE_6__ {int dt_cmp_mask; } ;
struct arm_ccn_component {int pmu_events_mask; TYPE_2__ xp; } ;
struct TYPE_8__ {TYPE_3__* pmu_counters; int pmu_counters_mask; } ;
struct arm_ccn {TYPE_4__ dt; } ;
struct TYPE_7__ {int * event; struct arm_ccn_component* source; } ;


 scalar_t__ CCN_CONFIG_EVENT (int ) ;
 scalar_t__ CCN_CONFIG_TYPE (int ) ;
 scalar_t__ CCN_EVENT_WATCHPOINT ;
 size_t CCN_IDX_PMU_CYCLE_COUNTER ;
 scalar_t__ CCN_TYPE_XP ;
 int clear_bit (size_t,int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static void arm_ccn_pmu_event_release(struct perf_event *event)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;

 if (hw->idx == CCN_IDX_PMU_CYCLE_COUNTER) {
  clear_bit(CCN_IDX_PMU_CYCLE_COUNTER, ccn->dt.pmu_counters_mask);
 } else {
  struct arm_ccn_component *source =
    ccn->dt.pmu_counters[hw->idx].source;

  if (CCN_CONFIG_TYPE(event->attr.config) == CCN_TYPE_XP &&
    CCN_CONFIG_EVENT(event->attr.config) ==
    CCN_EVENT_WATCHPOINT)
   clear_bit(hw->config_base, source->xp.dt_cmp_mask);
  else
   clear_bit(hw->config_base, source->pmu_events_mask);
  clear_bit(hw->idx, ccn->dt.pmu_counters_mask);
 }

 ccn->dt.pmu_counters[hw->idx].source = ((void*)0);
 ccn->dt.pmu_counters[hw->idx].event = ((void*)0);
}
