
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int pinctrl_copy_args (struct device_node const*,int const*,int,int,int,struct of_phandle_args*) ;
 int pinctrl_get_list_and_count (struct device_node const*,char const*,int const**,int*,int*) ;

int pinctrl_parse_index_with_args(const struct device_node *np,
      const char *list_name, int index,
      struct of_phandle_args *out_args)
{
 const __be32 *list;
 int nr_elem, nr_cells, error;

 error = pinctrl_get_list_and_count(np, list_name, &list,
        &nr_cells, &nr_elem);
 if (error || !nr_cells)
  return error;

 error = pinctrl_copy_args(np, list, index, nr_cells, nr_elem,
      out_args);
 if (error)
  return error;

 return 0;
}
