
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;
 struct regmap* ERR_PTR (int ) ;
 int exynos_pmu_of_device_ids ;
 struct device_node* of_find_matching_node (int *,int ) ;
 struct regmap* syscon_node_to_regmap (struct device_node*) ;

struct regmap *exynos_get_pmu_regmap(void)
{
 struct device_node *np = of_find_matching_node(((void*)0),
            exynos_pmu_of_device_ids);
 if (np)
  return syscon_node_to_regmap(np);
 return ERR_PTR(-ENODEV);
}
