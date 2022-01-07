
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_pmu {TYPE_1__* info; int regmap; } ;
struct rockchip_pm_domain {struct rockchip_domain_info* info; struct rockchip_pmu* pmu; } ;
struct rockchip_domain_info {unsigned int idle_mask; } ;
struct TYPE_2__ {int idle_offset; } ;


 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
{
 struct rockchip_pmu *pmu = pd->pmu;
 const struct rockchip_domain_info *pd_info = pd->info;
 unsigned int val;

 regmap_read(pmu->regmap, pmu->info->idle_offset, &val);
 return (val & pd_info->idle_mask) == pd_info->idle_mask;
}
