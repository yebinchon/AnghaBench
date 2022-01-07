
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rockchip_pmu {TYPE_1__* info; int regmap; } ;
struct rockchip_pm_domain {TYPE_2__* info; struct rockchip_pmu* pmu; } ;
struct TYPE_4__ {unsigned int status_mask; } ;
struct TYPE_3__ {int status_offset; } ;


 int regmap_read (int ,int ,unsigned int*) ;
 int rockchip_pmu_domain_is_idle (struct rockchip_pm_domain*) ;

__attribute__((used)) static bool rockchip_pmu_domain_is_on(struct rockchip_pm_domain *pd)
{
 struct rockchip_pmu *pmu = pd->pmu;
 unsigned int val;


 if (pd->info->status_mask == 0)
  return !rockchip_pmu_domain_is_idle(pd);

 regmap_read(pmu->regmap, pmu->info->status_offset, &val);


 return !(val & pd->info->status_mask);
}
