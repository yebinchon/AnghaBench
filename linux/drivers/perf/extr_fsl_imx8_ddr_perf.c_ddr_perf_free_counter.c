
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddr_pmu {int ** events; } ;



__attribute__((used)) static void ddr_perf_free_counter(struct ddr_pmu *pmu, int counter)
{
 pmu->events[counter] = ((void*)0);
}
