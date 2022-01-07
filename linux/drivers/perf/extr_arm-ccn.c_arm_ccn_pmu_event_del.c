
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int pmu; } ;
struct TYPE_2__ {int hrtimer; } ;
struct arm_ccn {TYPE_1__ dt; int irq; } ;


 int PERF_EF_UPDATE ;
 scalar_t__ arm_ccn_pmu_active_counters (struct arm_ccn*) ;
 int arm_ccn_pmu_event_release (struct perf_event*) ;
 int arm_ccn_pmu_event_stop (struct perf_event*,int ) ;
 int hrtimer_cancel (int *) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static void arm_ccn_pmu_event_del(struct perf_event *event, int flags)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);

 arm_ccn_pmu_event_stop(event, PERF_EF_UPDATE);

 arm_ccn_pmu_event_release(event);

 if (!ccn->irq && arm_ccn_pmu_active_counters(ccn) == 0)
  hrtimer_cancel(&ccn->dt.hrtimer);
}
