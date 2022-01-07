
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_syscon {int mask; int reg; int * map; } ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int of_property_read_u32_index (struct device_node*,char const*,int,int *) ;
 int * syscon_regmap_lookup_by_phandle (struct device_node*,char const*) ;

__attribute__((used)) static int stm32_rproc_get_syscon(struct device_node *np, const char *prop,
      struct stm32_syscon *syscon)
{
 int err = 0;

 syscon->map = syscon_regmap_lookup_by_phandle(np, prop);
 if (IS_ERR(syscon->map)) {
  err = PTR_ERR(syscon->map);
  syscon->map = ((void*)0);
  goto out;
 }

 err = of_property_read_u32_index(np, prop, 1, &syscon->reg);
 if (err)
  goto out;

 err = of_property_read_u32_index(np, prop, 2, &syscon->mask);

out:
 return err;
}
