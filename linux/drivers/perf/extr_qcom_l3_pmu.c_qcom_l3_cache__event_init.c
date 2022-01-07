
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct hw_perf_event {int idx; scalar_t__ sample_period; } ;
struct perf_event {int cpu; TYPE_2__* pmu; TYPE_1__ attr; struct hw_perf_event hw; } ;
struct l3cache_pmu {int cpumask; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int EINVAL ;
 int ENOENT ;
 int cpumask_first (int *) ;
 int qcom_l3_cache__validate_event_group (struct perf_event*) ;
 struct l3cache_pmu* to_l3cache_pmu (TYPE_2__*) ;

__attribute__((used)) static int qcom_l3_cache__event_init(struct perf_event *event)
{
 struct l3cache_pmu *l3pmu = to_l3cache_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;




 if (event->attr.type != event->pmu->type)
  return -ENOENT;




 if (hwc->sample_period)
  return -EINVAL;





 if (event->cpu < 0)
  return -EINVAL;


 if (!qcom_l3_cache__validate_event_group(event))
  return -EINVAL;

 hwc->idx = -1;
 event->cpu = cpumask_first(&l3pmu->cpumask);

 return 0;
}
