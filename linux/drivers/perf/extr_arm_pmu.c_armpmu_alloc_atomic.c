
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {int dummy; } ;


 int GFP_ATOMIC ;
 struct arm_pmu* __armpmu_alloc (int ) ;

struct arm_pmu *armpmu_alloc_atomic(void)
{
 return __armpmu_alloc(GFP_ATOMIC);
}
