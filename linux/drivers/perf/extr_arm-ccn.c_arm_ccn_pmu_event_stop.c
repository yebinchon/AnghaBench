
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int state; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int PERF_EF_UPDATE ;
 int PERF_HES_STOPPED ;
 int arm_ccn_pmu_event_update (struct perf_event*) ;
 int arm_ccn_pmu_xp_dt_config (struct perf_event*,int ) ;

__attribute__((used)) static void arm_ccn_pmu_event_stop(struct perf_event *event, int flags)
{
 struct hw_perf_event *hw = &event->hw;


 arm_ccn_pmu_xp_dt_config(event, 0);

 if (flags & PERF_EF_UPDATE)
  arm_ccn_pmu_event_update(event);

 hw->state |= PERF_HES_STOPPED;
}
