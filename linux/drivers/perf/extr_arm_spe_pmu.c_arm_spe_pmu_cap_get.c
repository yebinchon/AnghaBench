
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_spe_pmu {int features; int counter_sz; int min_period; } ;



 int SPE_PMU_CAP_FEAT_MAX ;

 int WARN (int,char*,int) ;
 int* arm_spe_pmu_feat_caps ;

__attribute__((used)) static u32 arm_spe_pmu_cap_get(struct arm_spe_pmu *spe_pmu, int cap)
{
 if (cap < SPE_PMU_CAP_FEAT_MAX)
  return !!(spe_pmu->features & arm_spe_pmu_feat_caps[cap]);

 switch (cap) {
 case 129:
  return spe_pmu->counter_sz;
 case 128:
  return spe_pmu->min_period;
 default:
  WARN(1, "unknown cap %d\n", cap);
 }

 return 0;
}
