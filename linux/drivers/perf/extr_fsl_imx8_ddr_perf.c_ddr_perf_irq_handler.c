
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idx; } ;
struct perf_event {TYPE_1__ hw; } ;
struct ddr_pmu {struct perf_event** events; } ;
typedef int irqreturn_t ;


 scalar_t__ EVENT_CYCLES_COUNTER ;
 int EVENT_CYCLES_ID ;
 int IRQ_HANDLED ;
 int NUM_COUNTERS ;
 int ddr_perf_counter_enable (struct ddr_pmu*,int ,scalar_t__,int) ;
 int ddr_perf_event_update (struct perf_event*) ;

__attribute__((used)) static irqreturn_t ddr_perf_irq_handler(int irq, void *p)
{
 int i;
 struct ddr_pmu *pmu = (struct ddr_pmu *) p;
 struct perf_event *event, *cycle_event = ((void*)0);


 ddr_perf_counter_enable(pmu,
         EVENT_CYCLES_ID,
         EVENT_CYCLES_COUNTER,
         0);
 for (i = 0; i < NUM_COUNTERS; i++) {

  if (!pmu->events[i])
   continue;

  event = pmu->events[i];

  ddr_perf_event_update(event);

  if (event->hw.idx == EVENT_CYCLES_COUNTER)
   cycle_event = event;
 }

 ddr_perf_counter_enable(pmu,
         EVENT_CYCLES_ID,
         EVENT_CYCLES_COUNTER,
         1);
 if (cycle_event)
  ddr_perf_event_update(cycle_event);

 return IRQ_HANDLED;
}
