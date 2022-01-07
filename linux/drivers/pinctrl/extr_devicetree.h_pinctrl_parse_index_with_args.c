
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int dummy; } ;
struct device_node {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static inline int
pinctrl_parse_index_with_args(const struct device_node *np,
         const char *list_name, int index,
         struct of_phandle_args *out_args)
{
 return -ENODEV;
}
