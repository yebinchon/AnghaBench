
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tegra_soctherm {int dummy; } ;


 int CCROC_THROT_PSKIP_CTRL_CPU_REG (int) ;
 int CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK ;
 int CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK ;
 int CCROC_THROT_PSKIP_CTRL_ENB_MASK ;
 int CCROC_THROT_PSKIP_RAMP_CPU_REG (int) ;
 int CCROC_THROT_PSKIP_RAMP_DURATION_MASK ;
 int CCROC_THROT_PSKIP_RAMP_STEP_MASK ;
 int REG_SET_MASK (int ,int ,int) ;




 int THROT_DEPTH_DIVIDEND (int) ;
 int ccroc_readl (struct tegra_soctherm*,int ) ;
 int ccroc_writel (struct tegra_soctherm*,int ,int ) ;

__attribute__((used)) static void throttlectl_cpu_level_cfg(struct tegra_soctherm *ts, int level)
{
 u8 depth, dividend;
 u32 r;

 switch (level) {
 case 130:
  depth = 50;
  break;
 case 129:
  depth = 75;
  break;
 case 131:
  depth = 80;
  break;
 case 128:
  return;
 default:
  return;
 }

 dividend = THROT_DEPTH_DIVIDEND(depth);


 r = ccroc_readl(ts, CCROC_THROT_PSKIP_RAMP_CPU_REG(level));
 r = REG_SET_MASK(r, CCROC_THROT_PSKIP_RAMP_DURATION_MASK, 0xff);
 r = REG_SET_MASK(r, CCROC_THROT_PSKIP_RAMP_STEP_MASK, 0xf);
 ccroc_writel(ts, r, CCROC_THROT_PSKIP_RAMP_CPU_REG(level));

 r = ccroc_readl(ts, CCROC_THROT_PSKIP_CTRL_CPU_REG(level));
 r = REG_SET_MASK(r, CCROC_THROT_PSKIP_CTRL_ENB_MASK, 1);
 r = REG_SET_MASK(r, CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK, dividend);
 r = REG_SET_MASK(r, CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK, 0xff);
 ccroc_writel(ts, r, CCROC_THROT_PSKIP_CTRL_CPU_REG(level));
}
