
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smmu_pmu {int dummy; } ;
struct hw_perf_event {int idx; scalar_t__ state; } ;
struct perf_event {struct hw_perf_event hw; int pmu; } ;


 int smmu_pmu_counter_enable (struct smmu_pmu*,int) ;
 int smmu_pmu_set_period (struct smmu_pmu*,struct hw_perf_event*) ;
 struct smmu_pmu* to_smmu_pmu (int ) ;

__attribute__((used)) static void smmu_pmu_event_start(struct perf_event *event, int flags)
{
 struct smmu_pmu *smmu_pmu = to_smmu_pmu(event->pmu);
 struct hw_perf_event *hwc = &event->hw;
 int idx = hwc->idx;

 hwc->state = 0;

 smmu_pmu_set_period(smmu_pmu, hwc);

 smmu_pmu_counter_enable(smmu_pmu, idx);
}
