
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_pmu {int num_counters; } ;



int hisi_uncore_pmu_counter_valid(struct hisi_pmu *hisi_pmu, int idx)
{
 return idx >= 0 && idx < hisi_pmu->num_counters;
}
