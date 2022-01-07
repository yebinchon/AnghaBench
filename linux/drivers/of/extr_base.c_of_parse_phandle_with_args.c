
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int __of_parse_phandle_with_args (struct device_node const*,char const*,char const*,int,int,struct of_phandle_args*) ;

int of_parse_phandle_with_args(const struct device_node *np, const char *list_name,
    const char *cells_name, int index,
    struct of_phandle_args *out_args)
{
 int cell_count = -1;

 if (index < 0)
  return -EINVAL;


 if (!cells_name)
  cell_count = 0;

 return __of_parse_phandle_with_args(np, list_name, cells_name,
         cell_count, index, out_args);
}
