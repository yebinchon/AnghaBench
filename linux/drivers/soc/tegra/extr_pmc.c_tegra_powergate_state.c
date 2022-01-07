
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* soc; } ;
struct TYPE_4__ {scalar_t__ has_gpu_clamps; } ;


 int BIT (int) ;
 int GPU_RG_CNTRL ;
 int PWRGATE_STATUS ;
 int TEGRA_POWERGATE_3D ;
 TYPE_2__* pmc ;
 int tegra_pmc_readl (TYPE_2__*,int ) ;

__attribute__((used)) static inline bool tegra_powergate_state(int id)
{
 if (id == TEGRA_POWERGATE_3D && pmc->soc->has_gpu_clamps)
  return (tegra_pmc_readl(pmc, GPU_RG_CNTRL) & 0x1) == 0;
 else
  return (tegra_pmc_readl(pmc, PWRGATE_STATUS) & BIT(id)) != 0;
}
