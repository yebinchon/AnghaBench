
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_pmc {TYPE_1__* soc; } ;
struct TYPE_2__ {int (* init ) (struct tegra_pmc*) ;} ;


 int stub1 (struct tegra_pmc*) ;

__attribute__((used)) static void tegra_pmc_init(struct tegra_pmc *pmc)
{
 if (pmc->soc->init)
  pmc->soc->init(pmc);
}
