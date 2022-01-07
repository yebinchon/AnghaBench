
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tegra_pmc {int powergates_lock; TYPE_1__* soc; } ;
struct TYPE_2__ {scalar_t__ has_gpu_clamps; } ;


 int GPU_RG_CNTRL ;
 int REMOVE_CLAMPING ;
 unsigned int TEGRA_POWERGATE_3D ;
 int TEGRA_POWERGATE_PCIE ;
 unsigned int TEGRA_POWERGATE_VDEC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tegra_pmc_writel (struct tegra_pmc*,int,int ) ;

__attribute__((used)) static int __tegra_powergate_remove_clamping(struct tegra_pmc *pmc,
          unsigned int id)
{
 u32 mask;

 mutex_lock(&pmc->powergates_lock);





 if (id == TEGRA_POWERGATE_3D) {
  if (pmc->soc->has_gpu_clamps) {
   tegra_pmc_writel(pmc, 0, GPU_RG_CNTRL);
   goto out;
  }
 }





 if (id == TEGRA_POWERGATE_VDEC)
  mask = (1 << TEGRA_POWERGATE_PCIE);
 else if (id == TEGRA_POWERGATE_PCIE)
  mask = (1 << TEGRA_POWERGATE_VDEC);
 else
  mask = (1 << id);

 tegra_pmc_writel(pmc, mask, REMOVE_CLAMPING);

out:
 mutex_unlock(&pmc->powergates_lock);

 return 0;
}
