
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int __be32 ;


 int ENOENT ;
 int * of_get_property (struct device_node const*,char const*,int*) ;
 int pinctrl_find_cells_size (struct device_node const*) ;

__attribute__((used)) static int pinctrl_get_list_and_count(const struct device_node *np,
          const char *list_name,
          const __be32 **list,
          int *cells_size,
          int *nr_elements)
{
 int size;

 *cells_size = 0;
 *nr_elements = 0;

 *list = of_get_property(np, list_name, &size);
 if (!*list)
  return -ENOENT;

 *cells_size = pinctrl_find_cells_size(np);
 if (*cells_size < 0)
  return -ENOENT;


 *nr_elements = (size / sizeof(**list)) / (*cells_size + 1);

 return 0;
}
