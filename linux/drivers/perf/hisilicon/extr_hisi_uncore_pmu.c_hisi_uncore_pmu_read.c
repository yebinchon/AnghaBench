
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int hisi_uncore_pmu_event_update (struct perf_event*) ;

void hisi_uncore_pmu_read(struct perf_event *event)
{

 hisi_uncore_pmu_event_update(event);
}
