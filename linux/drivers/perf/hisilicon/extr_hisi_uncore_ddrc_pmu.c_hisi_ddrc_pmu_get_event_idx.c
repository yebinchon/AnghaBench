
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int dummy; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct TYPE_2__ {unsigned long* used_mask; } ;
struct hisi_pmu {TYPE_1__ pmu_events; } ;


 int EAGAIN ;
 int GET_DDRC_EVENTID (struct hw_perf_event*) ;
 int set_bit (int,unsigned long*) ;
 scalar_t__ test_bit (int,unsigned long*) ;
 struct hisi_pmu* to_hisi_pmu (int ) ;

__attribute__((used)) static int hisi_ddrc_pmu_get_event_idx(struct perf_event *event)
{
 struct hisi_pmu *ddrc_pmu = to_hisi_pmu(event->pmu);
 unsigned long *used_mask = ddrc_pmu->pmu_events.used_mask;
 struct hw_perf_event *hwc = &event->hw;

 int idx = GET_DDRC_EVENTID(hwc);

 if (test_bit(idx, used_mask))
  return -EAGAIN;

 set_bit(idx, used_mask);

 return idx;
}
