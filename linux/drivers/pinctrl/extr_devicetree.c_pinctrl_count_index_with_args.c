
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int pinctrl_get_list_and_count (struct device_node const*,char const*,int const**,int*,int*) ;

int pinctrl_count_index_with_args(const struct device_node *np,
      const char *list_name)
{
 const __be32 *list;
 int size, nr_cells, error;

 error = pinctrl_get_list_and_count(np, list_name, &list,
        &nr_cells, &size);
 if (error)
  return error;

 return size;
}
