
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int config; } ;
struct hw_perf_event {scalar_t__ idx; int event_base; } ;
struct perf_event {TYPE_1__ attr; struct hw_perf_event hw; int pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_4__ {int config_lock; } ;
struct arm_ccn {TYPE_2__ dt; struct arm_ccn_component* xp; } ;


 int CCN_CONFIG_NODE (int ) ;
 scalar_t__ CCN_CONFIG_TYPE (int ) ;
 size_t CCN_CONFIG_XP (int ) ;
 scalar_t__ CCN_IDX_PMU_CYCLE_COUNTER ;
 scalar_t__ CCN_TYPE_XP ;
 scalar_t__ CCN_XP_DT_CONFIG ;
 int CCN_XP_DT_CONFIG__DT_CFG__MASK ;
 int CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH ;
 int CCN_XP_DT_CONFIG__DT_CFG__SHIFT (scalar_t__) ;
 size_t arm_ccn_node_to_xp (int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_xp_dt_config(struct perf_event *event, int enable)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;
 struct arm_ccn_component *xp;
 u32 val, dt_cfg;


 if (hw->idx == CCN_IDX_PMU_CYCLE_COUNTER)
  return;

 if (CCN_CONFIG_TYPE(event->attr.config) == CCN_TYPE_XP)
  xp = &ccn->xp[CCN_CONFIG_XP(event->attr.config)];
 else
  xp = &ccn->xp[arm_ccn_node_to_xp(
    CCN_CONFIG_NODE(event->attr.config))];

 if (enable)
  dt_cfg = hw->event_base;
 else
  dt_cfg = CCN_XP_DT_CONFIG__DT_CFG__PASS_THROUGH;

 spin_lock(&ccn->dt.config_lock);

 val = readl(xp->base + CCN_XP_DT_CONFIG);
 val &= ~(CCN_XP_DT_CONFIG__DT_CFG__MASK <<
   CCN_XP_DT_CONFIG__DT_CFG__SHIFT(hw->idx));
 val |= dt_cfg << CCN_XP_DT_CONFIG__DT_CFG__SHIFT(hw->idx);
 writel(val, xp->base + CCN_XP_DT_CONFIG);

 spin_unlock(&ccn->dt.config_lock);
}
