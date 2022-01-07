
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_soctherm {scalar_t__ regs; TYPE_1__* throt_cfgs; } ;
typedef enum soctherm_throttle_id { ____Placeholder_soctherm_throttle_id } soctherm_throttle_id ;
struct TYPE_2__ {int gpu_throt_level; } ;


 int REG_SET_MASK (int,int ,int) ;
 int THROTTLE_DEV_GPU ;
 int THROT_LEVEL_TO_DEPTH (int) ;
 scalar_t__ THROT_PSKIP_CTRL (int,int ) ;
 int THROT_PSKIP_CTRL_ENABLE_MASK ;
 int THROT_PSKIP_CTRL_VECT_GPU_MASK ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void throttlectl_gpu_level_select(struct tegra_soctherm *ts,
      enum soctherm_throttle_id throt)
{
 u32 r, level, throt_vect;

 level = ts->throt_cfgs[throt].gpu_throt_level;
 throt_vect = THROT_LEVEL_TO_DEPTH(level);
 r = readl(ts->regs + THROT_PSKIP_CTRL(throt, THROTTLE_DEV_GPU));
 r = REG_SET_MASK(r, THROT_PSKIP_CTRL_ENABLE_MASK, 1);
 r = REG_SET_MASK(r, THROT_PSKIP_CTRL_VECT_GPU_MASK, throt_vect);
 writel(r, ts->regs + THROT_PSKIP_CTRL(throt, THROTTLE_DEV_GPU));
}
