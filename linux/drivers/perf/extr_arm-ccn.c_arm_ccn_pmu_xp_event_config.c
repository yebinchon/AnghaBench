
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int config; } ;
struct hw_perf_event {size_t idx; int config_base; int event_base; } ;
struct perf_event {TYPE_3__ attr; struct hw_perf_event hw; int pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_4__ {struct arm_ccn_component* source; } ;


 int CCN_CONFIG_BUS (int ) ;
 int CCN_CONFIG_EVENT (int ) ;
 int CCN_CONFIG_VC (int ) ;
 int CCN_XP_DT_CONFIG__DT_CFG__XP_PMU_EVENT (int ) ;
 scalar_t__ CCN_XP_PMU_EVENT_SEL ;
 int CCN_XP_PMU_EVENT_SEL__ID__MASK ;
 int CCN_XP_PMU_EVENT_SEL__ID__SHIFT (int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_xp_event_config(struct perf_event *event)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;
 struct arm_ccn_component *source =
   ccn->dt.pmu_counters[hw->idx].source;
 u32 val, id;

 hw->event_base = CCN_XP_DT_CONFIG__DT_CFG__XP_PMU_EVENT(hw->config_base);

 id = (CCN_CONFIG_VC(event->attr.config) << 4) |
   (CCN_CONFIG_BUS(event->attr.config) << 3) |
   (CCN_CONFIG_EVENT(event->attr.config) << 0);

 val = readl(source->base + CCN_XP_PMU_EVENT_SEL);
 val &= ~(CCN_XP_PMU_EVENT_SEL__ID__MASK <<
   CCN_XP_PMU_EVENT_SEL__ID__SHIFT(hw->config_base));
 val |= id << CCN_XP_PMU_EVENT_SEL__ID__SHIFT(hw->config_base);
 writel(val, source->base + CCN_XP_PMU_EVENT_SEL);
}
