
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; int type; } ;
struct hw_perf_event {int idx; unsigned long config_base; int sample_period; int last_period; int period_left; scalar_t__ event_base; scalar_t__ config; scalar_t__ flags; } ;
struct perf_event {struct perf_event* group_leader; TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct arm_pmu {int (* map_event ) (struct perf_event*) ;scalar_t__ (* set_event_filter ) (struct hw_perf_event*,TYPE_1__*) ;} ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int arm_pmu_event_max_period (struct perf_event*) ;
 int is_sampling_event (struct perf_event*) ;
 int local64_set (int *,int) ;
 int pr_debug (char*,...) ;
 int stub1 (struct perf_event*) ;
 scalar_t__ stub2 (struct hw_perf_event*,TYPE_1__*) ;
 struct arm_pmu* to_arm_pmu (int ) ;
 scalar_t__ validate_group (struct perf_event*) ;

__attribute__((used)) static int
__hw_perf_event_init(struct perf_event *event)
{
 struct arm_pmu *armpmu = to_arm_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int mapping;

 hwc->flags = 0;
 mapping = armpmu->map_event(event);

 if (mapping < 0) {
  pr_debug("event %x:%llx not supported\n", event->attr.type,
    event->attr.config);
  return mapping;
 }







 hwc->idx = -1;
 hwc->config_base = 0;
 hwc->config = 0;
 hwc->event_base = 0;




 if (armpmu->set_event_filter &&
     armpmu->set_event_filter(hwc, &event->attr)) {
  pr_debug("ARM performance counters do not support "
    "mode exclusion\n");
  return -EOPNOTSUPP;
 }




 hwc->config_base |= (unsigned long)mapping;

 if (!is_sampling_event(event)) {






  hwc->sample_period = arm_pmu_event_max_period(event) >> 1;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 }

 if (event->group_leader != event) {
  if (validate_group(event) != 0)
   return -EINVAL;
 }

 return 0;
}
