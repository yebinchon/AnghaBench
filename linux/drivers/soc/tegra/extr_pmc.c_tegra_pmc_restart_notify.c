
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct notifier_block {int dummy; } ;
struct TYPE_10__ {TYPE_1__* soc; } ;
struct TYPE_9__ {int scratch0; } ;
struct TYPE_8__ {TYPE_2__* regs; } ;


 int NOTIFY_DONE ;
 int PMC_CNTRL ;
 int PMC_CNTRL_MAIN_RST ;
 int PMC_SCRATCH0_MODE_BOOTLOADER ;
 int PMC_SCRATCH0_MODE_MASK ;
 int PMC_SCRATCH0_MODE_RCM ;
 int PMC_SCRATCH0_MODE_RECOVERY ;
 TYPE_3__* pmc ;
 scalar_t__ strcmp (char const*,char*) ;
 int tegra_pmc_readl (TYPE_3__*,int ) ;
 int tegra_pmc_scratch_readl (TYPE_3__*,int ) ;
 int tegra_pmc_scratch_writel (TYPE_3__*,int ,int ) ;
 int tegra_pmc_writel (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int tegra_pmc_restart_notify(struct notifier_block *this,
        unsigned long action, void *data)
{
 const char *cmd = data;
 u32 value;

 value = tegra_pmc_scratch_readl(pmc, pmc->soc->regs->scratch0);
 value &= ~PMC_SCRATCH0_MODE_MASK;

 if (cmd) {
  if (strcmp(cmd, "recovery") == 0)
   value |= PMC_SCRATCH0_MODE_RECOVERY;

  if (strcmp(cmd, "bootloader") == 0)
   value |= PMC_SCRATCH0_MODE_BOOTLOADER;

  if (strcmp(cmd, "forced-recovery") == 0)
   value |= PMC_SCRATCH0_MODE_RCM;
 }

 tegra_pmc_scratch_writel(pmc, value, pmc->soc->regs->scratch0);


 value = tegra_pmc_readl(pmc, PMC_CNTRL);
 value |= PMC_CNTRL_MAIN_RST;
 tegra_pmc_writel(pmc, value, PMC_CNTRL);

 return NOTIFY_DONE;
}
