
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_events; } ;


 TYPE_1__* __oprofile_cpu_pmu ;

int perf_num_counters(void)
{
 int max_events = 0;

 if (__oprofile_cpu_pmu != ((void*)0))
  max_events = __oprofile_cpu_pmu->num_events;

 return max_events;
}
