
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ state; int idx; int prev_count; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;
struct arm_ccn {int dummy; } ;


 int arm_ccn_pmu_read_counter (struct arm_ccn*,int ) ;
 int arm_ccn_pmu_xp_dt_config (struct perf_event*,int) ;
 int local64_set (int *,int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static void arm_ccn_pmu_event_start(struct perf_event *event, int flags)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;

 local64_set(&event->hw.prev_count,
   arm_ccn_pmu_read_counter(ccn, hw->idx));
 hw->state = 0;


 arm_ccn_pmu_xp_dt_config(event, 1);
}
