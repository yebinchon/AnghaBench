
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int config; } ;
struct hw_perf_event {int idx; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct TYPE_4__ {int config_lock; scalar_t__ base; } ;
struct arm_ccn {TYPE_2__ dt; } ;


 scalar_t__ CCN_CONFIG_EVENT (int ) ;
 int CCN_CONFIG_NODE (int ) ;
 scalar_t__ CCN_CONFIG_TYPE (int ) ;
 int CCN_CONFIG_XP (int ) ;
 scalar_t__ CCN_DT_ACTIVE_DSM ;
 int CCN_DT_ACTIVE_DSM__DSM_ID__MASK ;
 int CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT (int) ;
 scalar_t__ CCN_EVENT_WATCHPOINT ;
 int CCN_IDX_PMU_CYCLE_COUNTER ;
 scalar_t__ CCN_TYPE_XP ;
 int arm_ccn_node_to_xp (int ) ;
 int arm_ccn_pmu_node_event_config (struct perf_event*) ;
 int arm_ccn_pmu_xp_event_config (struct perf_event*) ;
 int arm_ccn_pmu_xp_watchpoint_config (struct perf_event*) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_event_config(struct perf_event *event)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;
 u32 xp, offset, val;


 if (hw->idx == CCN_IDX_PMU_CYCLE_COUNTER)
  return;

 if (CCN_CONFIG_TYPE(event->attr.config) == CCN_TYPE_XP)
  xp = CCN_CONFIG_XP(event->attr.config);
 else
  xp = arm_ccn_node_to_xp(CCN_CONFIG_NODE(event->attr.config));

 spin_lock(&ccn->dt.config_lock);


 offset = (hw->idx / 4) * 4;
 val = readl(ccn->dt.base + CCN_DT_ACTIVE_DSM + offset);
 val &= ~(CCN_DT_ACTIVE_DSM__DSM_ID__MASK <<
   CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT(hw->idx % 4));
 val |= xp << CCN_DT_ACTIVE_DSM__DSM_ID__SHIFT(hw->idx % 4);
 writel(val, ccn->dt.base + CCN_DT_ACTIVE_DSM + offset);

 if (CCN_CONFIG_TYPE(event->attr.config) == CCN_TYPE_XP) {
  if (CCN_CONFIG_EVENT(event->attr.config) ==
    CCN_EVENT_WATCHPOINT)
   arm_ccn_pmu_xp_watchpoint_config(event);
  else
   arm_ccn_pmu_xp_event_config(event);
 } else {
  arm_ccn_pmu_node_event_config(event);
 }

 spin_unlock(&ccn->dt.config_lock);
}
