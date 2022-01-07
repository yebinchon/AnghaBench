
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int config; } ;
struct hw_perf_event {size_t idx; int config_base; int event_base; } ;
struct perf_event {TYPE_3__ attr; struct hw_perf_event hw; int pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_5__ {TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_2__ dt; } ;
struct TYPE_4__ {struct arm_ccn_component* source; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ CCN_CONFIG_EVENT (int ) ;
 int CCN_CONFIG_NODE (int ) ;
 scalar_t__ CCN_CONFIG_TYPE (int ) ;
 scalar_t__ CCN_HNF_PMU_EVENT_SEL ;
 scalar_t__ CCN_HNF_PMU_EVENT_SEL__ID__MASK ;
 scalar_t__ CCN_HNF_PMU_EVENT_SEL__ID__SHIFT (int) ;
 scalar_t__ CCN_RNI_PMU_EVENT_SEL ;
 scalar_t__ CCN_RNI_PMU_EVENT_SEL__ID__MASK ;
 scalar_t__ CCN_RNI_PMU_EVENT_SEL__ID__SHIFT (int) ;
 scalar_t__ CCN_SBAS_PMU_EVENT_SEL ;
 scalar_t__ CCN_SBAS_PMU_EVENT_SEL__ID__MASK ;
 scalar_t__ CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT (int) ;
 scalar_t__ CCN_TYPE_HNF ;
 int CCN_TYPE_RNI_3P ;
 scalar_t__ CCN_TYPE_SBAS ;
 int CCN_XP_DT_CONFIG__DT_CFG__DEVICE_PMU_EVENT (scalar_t__,int) ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ arm_ccn_node_to_xp_port (int ) ;
 int arm_ccn_pmu_type_eq (scalar_t__,int ) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_node_event_config(struct perf_event *event)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;
 struct arm_ccn_component *source =
   ccn->dt.pmu_counters[hw->idx].source;
 u32 type = CCN_CONFIG_TYPE(event->attr.config);
 u32 val, port;

 port = arm_ccn_node_to_xp_port(CCN_CONFIG_NODE(event->attr.config));
 hw->event_base = CCN_XP_DT_CONFIG__DT_CFG__DEVICE_PMU_EVENT(port,
   hw->config_base);


 BUILD_BUG_ON(CCN_HNF_PMU_EVENT_SEL != CCN_SBAS_PMU_EVENT_SEL);
 BUILD_BUG_ON(CCN_SBAS_PMU_EVENT_SEL != CCN_RNI_PMU_EVENT_SEL);
 BUILD_BUG_ON(CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(1) !=
   CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT(1));
 BUILD_BUG_ON(CCN_SBAS_PMU_EVENT_SEL__ID__SHIFT(1) !=
   CCN_RNI_PMU_EVENT_SEL__ID__SHIFT(1));
 BUILD_BUG_ON(CCN_HNF_PMU_EVENT_SEL__ID__MASK !=
   CCN_SBAS_PMU_EVENT_SEL__ID__MASK);
 BUILD_BUG_ON(CCN_SBAS_PMU_EVENT_SEL__ID__MASK !=
   CCN_RNI_PMU_EVENT_SEL__ID__MASK);
 if (WARN_ON(type != CCN_TYPE_HNF && type != CCN_TYPE_SBAS &&
   !arm_ccn_pmu_type_eq(type, CCN_TYPE_RNI_3P)))
  return;


 val = readl(source->base + CCN_HNF_PMU_EVENT_SEL);
 val &= ~(CCN_HNF_PMU_EVENT_SEL__ID__MASK <<
  CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(hw->config_base));
 val |= CCN_CONFIG_EVENT(event->attr.config) <<
  CCN_HNF_PMU_EVENT_SEL__ID__SHIFT(hw->config_base);
 writel(val, source->base + CCN_HNF_PMU_EVENT_SEL);
}
