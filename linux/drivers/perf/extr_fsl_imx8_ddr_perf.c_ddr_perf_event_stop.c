
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct ddr_pmu {int dummy; } ;


 int PERF_HES_STOPPED ;
 int ddr_perf_counter_enable (struct ddr_pmu*,int ,int,int) ;
 int ddr_perf_event_update (struct perf_event*) ;
 struct ddr_pmu* to_ddr_pmu (int ) ;

__attribute__((used)) static void ddr_perf_event_stop(struct perf_event *event, int flags)
{
 struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int counter = hwc->idx;

 ddr_perf_counter_enable(pmu, event->attr.config, counter, 0);
 ddr_perf_event_update(event);

 hwc->state |= PERF_HES_STOPPED;
}
