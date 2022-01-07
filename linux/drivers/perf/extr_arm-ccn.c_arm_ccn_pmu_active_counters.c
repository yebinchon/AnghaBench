
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pmu_counters_mask; } ;
struct arm_ccn {TYPE_1__ dt; } ;


 scalar_t__ CCN_NUM_PMU_EVENT_COUNTERS ;
 int bitmap_weight (int ,scalar_t__) ;

__attribute__((used)) static int arm_ccn_pmu_active_counters(struct arm_ccn *ccn)
{
 return bitmap_weight(ccn->dt.pmu_counters_mask,
        CCN_NUM_PMU_EVENT_COUNTERS + 1);
}
