
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* __oprofile_cpu_pmu ;

const char *perf_pmu_name(void)
{
 if (!__oprofile_cpu_pmu)
  return ((void*)0);

 return __oprofile_cpu_pmu->name;
}
