
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct exynos_pmu_data {int (* powerdown_conf_extra ) (int) ;TYPE_1__* pmu_config; int (* powerdown_conf ) (int) ;} ;
typedef enum sys_powerdown { ____Placeholder_sys_powerdown } sys_powerdown ;
struct TYPE_4__ {struct exynos_pmu_data* pmu_data; } ;
struct TYPE_3__ {scalar_t__ offset; int * val; } ;


 scalar_t__ PMU_TABLE_END ;
 TYPE_2__* pmu_context ;
 int pmu_raw_writel (int ,scalar_t__) ;
 int stub1 (int) ;
 int stub2 (int) ;

void exynos_sys_powerdown_conf(enum sys_powerdown mode)
{
 unsigned int i;
 const struct exynos_pmu_data *pmu_data;

 if (!pmu_context || !pmu_context->pmu_data)
  return;

 pmu_data = pmu_context->pmu_data;

 if (pmu_data->powerdown_conf)
  pmu_data->powerdown_conf(mode);

 if (pmu_data->pmu_config) {
  for (i = 0; (pmu_data->pmu_config[i].offset != PMU_TABLE_END); i++)
   pmu_raw_writel(pmu_data->pmu_config[i].val[mode],
     pmu_data->pmu_config[i].offset);
 }

 if (pmu_data->powerdown_conf_extra)
  pmu_data->powerdown_conf_extra(mode);
}
