
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmx {unsigned int nbanks; int pctl; int ** regs; int * backup_regs; } ;
struct device {int dummy; } ;


 struct tegra_pmx* dev_get_drvdata (struct device*) ;
 int pinctrl_force_sleep (int ) ;
 int readl_relaxed (int ) ;
 size_t tegra_pinctrl_get_bank_size (struct device*,unsigned int) ;

__attribute__((used)) static int tegra_pinctrl_suspend(struct device *dev)
{
 struct tegra_pmx *pmx = dev_get_drvdata(dev);
 u32 *backup_regs = pmx->backup_regs;
 u32 *regs;
 size_t bank_size;
 unsigned int i, k;

 for (i = 0; i < pmx->nbanks; i++) {
  bank_size = tegra_pinctrl_get_bank_size(dev, i);
  regs = pmx->regs[i];
  for (k = 0; k < bank_size; k++)
   *backup_regs++ = readl_relaxed(regs++);
 }

 return pinctrl_force_sleep(pmx->pctl);
}
