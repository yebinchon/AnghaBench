
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx2_uncore_pmu {scalar_t__ base; } ;
struct hw_perf_event {scalar_t__ event_base; scalar_t__ config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int GET_COUNTERID (struct perf_event*) ;
 scalar_t__ L3C_COUNTER_CTL ;
 scalar_t__ L3C_COUNTER_DATA ;

__attribute__((used)) static void init_cntr_base_l3c(struct perf_event *event,
  struct tx2_uncore_pmu *tx2_pmu)
{
 struct hw_perf_event *hwc = &event->hw;


 hwc->config_base = (unsigned long)tx2_pmu->base
  + L3C_COUNTER_CTL + (8 * GET_COUNTERID(event));
 hwc->event_base = (unsigned long)tx2_pmu->base
  + L3C_COUNTER_DATA + (8 * GET_COUNTERID(event));
}
