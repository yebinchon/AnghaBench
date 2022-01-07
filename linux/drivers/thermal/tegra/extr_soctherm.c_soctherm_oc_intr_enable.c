
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_soctherm {scalar_t__ regs; } ;
typedef enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;


 scalar_t__ OC_INTR_ENABLE ;
 int OC_INTR_OC1_MASK ;
 int OC_INTR_OC2_MASK ;
 int OC_INTR_OC3_MASK ;
 int OC_INTR_OC4_MASK ;
 int REG_SET_MASK (int ,int ,int) ;




 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void soctherm_oc_intr_enable(struct tegra_soctherm *ts,
        enum soctherm_throttle_id alarm,
        bool enable)
{
 u32 r;

 if (!enable)
  return;

 r = readl(ts->regs + OC_INTR_ENABLE);
 switch (alarm) {
 case 131:
  r = REG_SET_MASK(r, OC_INTR_OC1_MASK, 1);
  break;
 case 130:
  r = REG_SET_MASK(r, OC_INTR_OC2_MASK, 1);
  break;
 case 129:
  r = REG_SET_MASK(r, OC_INTR_OC3_MASK, 1);
  break;
 case 128:
  r = REG_SET_MASK(r, OC_INTR_OC4_MASK, 1);
  break;
 default:
  r = 0;
  break;
 }
 writel(r, ts->regs + OC_INTR_ENABLE);
}
