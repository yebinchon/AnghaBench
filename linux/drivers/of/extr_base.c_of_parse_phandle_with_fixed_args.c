
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int __of_parse_phandle_with_args (struct device_node const*,char const*,int *,int,int,struct of_phandle_args*) ;

int of_parse_phandle_with_fixed_args(const struct device_node *np,
    const char *list_name, int cell_count,
    int index, struct of_phandle_args *out_args)
{
 if (index < 0)
  return -EINVAL;
 return __of_parse_phandle_with_args(np, list_name, ((void*)0), cell_count,
        index, out_args);
}
