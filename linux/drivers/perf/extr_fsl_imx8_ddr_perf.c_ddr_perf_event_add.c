
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; int config1; } ;
struct hw_perf_event {int idx; int state; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct ddr_pmu {int active_events; struct perf_event** events; int dev; scalar_t__ base; TYPE_2__* devtype_data; } ;
struct TYPE_4__ {int quirks; } ;


 int AXI_MASKING_REVERT ;
 scalar_t__ COUNTER_DPCR1 ;
 int DDR_CAP_AXI_ID_FILTER ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int NUM_COUNTERS ;
 int PERF_EF_START ;
 int PERF_HES_STOPPED ;
 int ddr_perf_alloc_counter (struct ddr_pmu*,int) ;
 int ddr_perf_event_start (struct perf_event*,int) ;
 int ddr_perf_filters_compatible (struct perf_event*,struct perf_event*) ;
 scalar_t__ ddr_perf_is_filtered (struct perf_event*) ;
 int dev_dbg (int ,char*) ;
 struct ddr_pmu* to_ddr_pmu (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ddr_perf_event_add(struct perf_event *event, int flags)
{
 struct ddr_pmu *pmu = to_ddr_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int counter;
 int cfg = event->attr.config;
 int cfg1 = event->attr.config1;

 if (pmu->devtype_data->quirks & DDR_CAP_AXI_ID_FILTER) {
  int i;

  for (i = 1; i < NUM_COUNTERS; i++) {
   if (pmu->events[i] &&
       !ddr_perf_filters_compatible(event, pmu->events[i]))
    return -EINVAL;
  }

  if (ddr_perf_is_filtered(event)) {

   cfg1 ^= AXI_MASKING_REVERT;
   writel(cfg1, pmu->base + COUNTER_DPCR1);
  }
 }

 counter = ddr_perf_alloc_counter(pmu, cfg);
 if (counter < 0) {
  dev_dbg(pmu->dev, "There are not enough counters\n");
  return -EOPNOTSUPP;
 }

 pmu->events[counter] = event;
 pmu->active_events++;
 hwc->idx = counter;

 hwc->state |= PERF_HES_STOPPED;

 if (flags & PERF_EF_START)
  ddr_perf_event_start(event, flags);

 return 0;
}
