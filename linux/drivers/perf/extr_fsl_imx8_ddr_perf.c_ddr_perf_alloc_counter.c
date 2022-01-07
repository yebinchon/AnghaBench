
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ddr_pmu {int ** events; } ;


 size_t ENOENT ;
 size_t EVENT_CYCLES_COUNTER ;
 int EVENT_CYCLES_ID ;
 int NUM_COUNTERS ;

__attribute__((used)) static u32 ddr_perf_alloc_counter(struct ddr_pmu *pmu, int event)
{
 int i;






 if (event == EVENT_CYCLES_ID) {
  if (pmu->events[EVENT_CYCLES_COUNTER] == ((void*)0))
   return EVENT_CYCLES_COUNTER;
  else
   return -ENOENT;
 }

 for (i = 1; i < NUM_COUNTERS; i++) {
  if (pmu->events[i] == ((void*)0))
   return i;
 }

 return -ENOENT;
}
