
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* throt_cfgs; } ;
typedef enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;
struct TYPE_2__ {int cpu_throt_level; } ;


 int REG_SET_MASK (int,int ,int) ;



 int THROTTLE_DEV_CPU ;
 scalar_t__ THROT_PSKIP_CTRL (int,int ) ;
 int THROT_PSKIP_CTRL_ENABLE_MASK ;
 int THROT_PSKIP_CTRL_VECT2_CPU_MASK ;
 int THROT_PSKIP_CTRL_VECT_CPU_MASK ;
 scalar_t__ THROT_PSKIP_RAMP (int,int ) ;
 int THROT_PSKIP_RAMP_SEQ_BYPASS_MODE_MASK ;
 int THROT_VECT_HIGH ;
 int THROT_VECT_LOW ;
 int THROT_VECT_MED ;
 int THROT_VECT_NONE ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void throttlectl_cpu_level_select(struct tegra_soctherm *ts,
      enum soctherm_throttle_id throt)
{
 u32 r, throt_vect;


 switch (ts->throt_cfgs[throt].cpu_throt_level) {
 case 129:
  throt_vect = THROT_VECT_LOW;
  break;
 case 128:
  throt_vect = THROT_VECT_MED;
  break;
 case 130:
  throt_vect = THROT_VECT_HIGH;
  break;
 default:
  throt_vect = THROT_VECT_NONE;
  break;
 }

 r = readl(ts->regs + THROT_PSKIP_CTRL(throt, THROTTLE_DEV_CPU));
 r = REG_SET_MASK(r, THROT_PSKIP_CTRL_ENABLE_MASK, 1);
 r = REG_SET_MASK(r, THROT_PSKIP_CTRL_VECT_CPU_MASK, throt_vect);
 r = REG_SET_MASK(r, THROT_PSKIP_CTRL_VECT2_CPU_MASK, throt_vect);
 writel(r, ts->regs + THROT_PSKIP_CTRL(throt, THROTTLE_DEV_CPU));


 r = REG_SET_MASK(0, THROT_PSKIP_RAMP_SEQ_BYPASS_MODE_MASK, 1);
 writel(r, ts->regs + THROT_PSKIP_RAMP(throt, THROTTLE_DEV_CPU));
}
