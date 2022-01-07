
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_pmx {unsigned int nbanks; int ** regs; int * backup_regs; } ;
struct device {int dummy; } ;


 struct tegra_pmx* dev_get_drvdata (struct device*) ;
 int readl_relaxed (int *) ;
 int rmb () ;
 size_t tegra_pinctrl_get_bank_size (struct device*,unsigned int) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int tegra_pinctrl_resume(struct device *dev)
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
   writel_relaxed(*backup_regs++, regs++);
 }


 readl_relaxed(pmx->regs[0]);

 rmb();
 return 0;
}
