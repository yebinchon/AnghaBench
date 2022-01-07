
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_8__ {int config1; int config2; int config; } ;
struct hw_perf_event {size_t idx; unsigned long config_base; int event_base; } ;
struct perf_event {TYPE_4__ attr; struct hw_perf_event hw; int pmu; } ;
struct arm_ccn_component {scalar_t__ base; } ;
struct TYPE_7__ {TYPE_2__* cmp_mask; TYPE_1__* pmu_counters; } ;
struct arm_ccn {TYPE_3__ dt; } ;
struct TYPE_6__ {int l; int h; } ;
struct TYPE_5__ {struct arm_ccn_component* source; } ;


 int CCN_CONFIG_DIR (int ) ;
 size_t CCN_CONFIG_MASK (int ) ;
 int CCN_CONFIG_PORT (int ) ;
 int CCN_CONFIG_VC (int ) ;
 scalar_t__ CCN_XP_DT_CMP_MASK_H (unsigned long) ;
 scalar_t__ CCN_XP_DT_CMP_MASK_L (unsigned long) ;
 scalar_t__ CCN_XP_DT_CMP_VAL_H (unsigned long) ;
 scalar_t__ CCN_XP_DT_CMP_VAL_L (unsigned long) ;
 int CCN_XP_DT_CONFIG__DT_CFG__WATCHPOINT (unsigned long) ;
 scalar_t__ CCN_XP_DT_INTERFACE_SEL ;
 int CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK ;
 int CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT (unsigned long) ;
 int CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK ;
 int CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT (unsigned long) ;
 int CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK ;
 int CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT (unsigned long) ;
 struct arm_ccn* pmu_to_arm_ccn (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void arm_ccn_pmu_xp_watchpoint_config(struct perf_event *event)
{
 struct arm_ccn *ccn = pmu_to_arm_ccn(event->pmu);
 struct hw_perf_event *hw = &event->hw;
 struct arm_ccn_component *source =
   ccn->dt.pmu_counters[hw->idx].source;
 unsigned long wp = hw->config_base;
 u32 val;
 u64 cmp_l = event->attr.config1;
 u64 cmp_h = event->attr.config2;
 u64 mask_l = ccn->dt.cmp_mask[CCN_CONFIG_MASK(event->attr.config)].l;
 u64 mask_h = ccn->dt.cmp_mask[CCN_CONFIG_MASK(event->attr.config)].h;

 hw->event_base = CCN_XP_DT_CONFIG__DT_CFG__WATCHPOINT(wp);


 val = readl(source->base + CCN_XP_DT_INTERFACE_SEL);
 val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__MASK <<
   CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT(wp));
 val |= CCN_CONFIG_DIR(event->attr.config) <<
   CCN_XP_DT_INTERFACE_SEL__DT_IO_SEL__SHIFT(wp);
 val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__MASK <<
   CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT(wp));
 val |= CCN_CONFIG_PORT(event->attr.config) <<
   CCN_XP_DT_INTERFACE_SEL__DT_DEV_SEL__SHIFT(wp);
 val &= ~(CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__MASK <<
   CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT(wp));
 val |= CCN_CONFIG_VC(event->attr.config) <<
   CCN_XP_DT_INTERFACE_SEL__DT_VC_SEL__SHIFT(wp);
 writel(val, source->base + CCN_XP_DT_INTERFACE_SEL);


 writel(cmp_l & 0xffffffff, source->base + CCN_XP_DT_CMP_VAL_L(wp));
 writel((cmp_l >> 32) & 0x7fffffff,
   source->base + CCN_XP_DT_CMP_VAL_L(wp) + 4);
 writel(cmp_h & 0xffffffff, source->base + CCN_XP_DT_CMP_VAL_H(wp));
 writel((cmp_h >> 32) & 0x0fffffff,
   source->base + CCN_XP_DT_CMP_VAL_H(wp) + 4);


 writel(mask_l & 0xffffffff, source->base + CCN_XP_DT_CMP_MASK_L(wp));
 writel((mask_l >> 32) & 0x7fffffff,
   source->base + CCN_XP_DT_CMP_MASK_L(wp) + 4);
 writel(mask_h & 0xffffffff, source->base + CCN_XP_DT_CMP_MASK_H(wp));
 writel((mask_h >> 32) & 0x0fffffff,
   source->base + CCN_XP_DT_CMP_MASK_H(wp) + 4);
}
