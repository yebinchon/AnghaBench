
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tx2_uncore_pmu {scalar_t__ cpu; scalar_t__ max_events; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ config; } ;
struct hw_perf_event {scalar_t__ config; } ;
struct perf_event {int attach_state; scalar_t__ cpu; TYPE_1__ attr; TYPE_2__* pmu; struct hw_perf_event hw; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int PERF_ATTACH_TASK ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 scalar_t__ nr_cpu_ids ;
 struct tx2_uncore_pmu* pmu_to_tx2_pmu (TYPE_2__*) ;
 int tx2_uncore_validate_event_group (struct perf_event*) ;

__attribute__((used)) static int tx2_uncore_event_init(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct tx2_uncore_pmu *tx2_pmu;


 if (event->attr.type != event->pmu->type)
  return -ENOENT;






 if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
  return -EINVAL;

 if (event->cpu < 0)
  return -EINVAL;

 tx2_pmu = pmu_to_tx2_pmu(event->pmu);
 if (tx2_pmu->cpu >= nr_cpu_ids)
  return -EINVAL;
 event->cpu = tx2_pmu->cpu;

 if (event->attr.config >= tx2_pmu->max_events)
  return -EINVAL;


 hwc->config = event->attr.config;


 if (!tx2_uncore_validate_event_group(event))
  return -EINVAL;

 return 0;
}
