
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_7__ {TYPE_1__* soc; } ;
struct TYPE_6__ {size_t rst_level_mask; size_t rst_level_shift; int rst_status; } ;
struct TYPE_5__ {size_t num_reset_levels; char** reset_levels; TYPE_2__* regs; } ;


 scalar_t__ WARN_ON (int) ;
 TYPE_3__* pmc ;
 int sprintf (char*,char*,char*) ;
 size_t tegra_pmc_readl (TYPE_3__*,int ) ;

__attribute__((used)) static ssize_t reset_level_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 u32 value;

 value = tegra_pmc_readl(pmc, pmc->soc->regs->rst_status);
 value &= pmc->soc->regs->rst_level_mask;
 value >>= pmc->soc->regs->rst_level_shift;

 if (WARN_ON(value >= pmc->soc->num_reset_levels))
  return sprintf(buf, "%s\n", "UNKNOWN");

 return sprintf(buf, "%s\n", pmc->soc->reset_levels[value]);
}
