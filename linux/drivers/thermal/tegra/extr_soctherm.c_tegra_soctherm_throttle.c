
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_soctherm {scalar_t__ regs; scalar_t__ clk_regs; TYPE_1__* soc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_ccroc; } ;


 scalar_t__ CAR_SUPER_CCLKG_DIVIDER ;
 int CCROC_GLOBAL_CFG ;
 int CCROC_SUPER_CCLKG_DIVIDER ;
 int CDIVG_USE_THERM_CONTROLS_MASK ;
 int REG_SET_MASK (int,int ,int) ;
 int STATS_CTL_CLR_DN ;
 int STATS_CTL_CLR_UP ;
 int STATS_CTL_EN_DN ;
 int STATS_CTL_EN_UP ;
 int TEGRA_SOCTHERM_THROT_LEVEL_HIGH ;
 int TEGRA_SOCTHERM_THROT_LEVEL_LOW ;
 int TEGRA_SOCTHERM_THROT_LEVEL_MED ;
 scalar_t__ THERMCTL_STATS_CTL ;
 int THROTTLE_SIZE ;
 scalar_t__ THROT_GLOBAL_CFG ;
 int THROT_GLOBAL_ENB_MASK ;
 int ccroc_readl (struct tegra_soctherm*,int ) ;
 int ccroc_writel (struct tegra_soctherm*,int,int ) ;
 struct tegra_soctherm* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int soctherm_throttle_program (struct tegra_soctherm*,int) ;
 int throttlectl_cpu_level_cfg (struct tegra_soctherm*,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void tegra_soctherm_throttle(struct device *dev)
{
 struct tegra_soctherm *ts = dev_get_drvdata(dev);
 u32 v;
 int i;


 if (ts->soc->use_ccroc) {
  throttlectl_cpu_level_cfg(ts, TEGRA_SOCTHERM_THROT_LEVEL_LOW);
  throttlectl_cpu_level_cfg(ts, TEGRA_SOCTHERM_THROT_LEVEL_MED);
  throttlectl_cpu_level_cfg(ts, TEGRA_SOCTHERM_THROT_LEVEL_HIGH);
 }


 for (i = 0; i < THROTTLE_SIZE; i++)
  soctherm_throttle_program(ts, i);

 v = REG_SET_MASK(0, THROT_GLOBAL_ENB_MASK, 1);
 if (ts->soc->use_ccroc) {
  ccroc_writel(ts, v, CCROC_GLOBAL_CFG);

  v = ccroc_readl(ts, CCROC_SUPER_CCLKG_DIVIDER);
  v = REG_SET_MASK(v, CDIVG_USE_THERM_CONTROLS_MASK, 1);
  ccroc_writel(ts, v, CCROC_SUPER_CCLKG_DIVIDER);
 } else {
  writel(v, ts->regs + THROT_GLOBAL_CFG);

  v = readl(ts->clk_regs + CAR_SUPER_CCLKG_DIVIDER);
  v = REG_SET_MASK(v, CDIVG_USE_THERM_CONTROLS_MASK, 1);
  writel(v, ts->clk_regs + CAR_SUPER_CCLKG_DIVIDER);
 }


 v = STATS_CTL_CLR_DN | STATS_CTL_EN_DN |
     STATS_CTL_CLR_UP | STATS_CTL_EN_UP;
 writel(v, ts->regs + THERMCTL_STATS_CTL);
}
