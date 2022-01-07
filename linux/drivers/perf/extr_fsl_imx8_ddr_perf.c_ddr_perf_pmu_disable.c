
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct ddr_pmu {int ** events; } ;


 size_t EVENT_CYCLES_COUNTER ;
 int EVENT_CYCLES_ID ;
 int ddr_perf_counter_enable (struct ddr_pmu*,int ,size_t,int) ;
 struct ddr_pmu* to_ddr_pmu (struct pmu*) ;

__attribute__((used)) static void ddr_perf_pmu_disable(struct pmu *pmu)
{
 struct ddr_pmu *ddr_pmu = to_ddr_pmu(pmu);

 if (ddr_pmu->events[EVENT_CYCLES_COUNTER] == ((void*)0))
  ddr_perf_counter_enable(ddr_pmu,
          EVENT_CYCLES_ID,
          EVENT_CYCLES_COUNTER,
          0);
}
