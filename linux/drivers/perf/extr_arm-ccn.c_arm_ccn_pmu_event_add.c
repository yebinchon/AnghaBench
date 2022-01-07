
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int state; } ;
struct perf_event {int pmu; struct hw_perf_event hw; } ;
struct TYPE_2__ {int hrtimer; } ;
struct arm_ccn {TYPE_1__ dt; int irq; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int PERF_EF_START ;
 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int arm_ccn_pmu_active_counters (struct arm_ccn*) ;
 int arm_ccn_pmu_event_alloc (struct perf_event*) ;
 int arm_ccn_pmu_event_config (struct perf_event*) ;
 int arm_ccn_pmu_event_start (struct perf_event*,int ) ;
 int arm_ccn_pmu_timer_period () ;
 int hrtimer_start (int *,int ,int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;

__attribute__((used)) static int arm_ccn_pmu_event_add(struct perf_event *event, int flags)
{
 int err;
 struct hw_perf_event *hw = &event->hw;
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);

 err = arm_ccn_pmu_event_alloc(event);
 if (err)
  return err;






 if (!ccn->irq && arm_ccn_pmu_active_counters(ccn) == 1)
  hrtimer_start(&ccn->dt.hrtimer, arm_ccn_pmu_timer_period(),
         HRTIMER_MODE_REL_PINNED);

 arm_ccn_pmu_event_config(event);

 hw->state = PERF_HES_STOPPED;

 if (flags & PERF_EF_START)
  arm_ccn_pmu_event_start(event, PERF_EF_UPDATE);

 return 0;
}
