
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int args_count; int * args; struct device_node* np; } ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 int EINVAL ;
 int be32_to_cpup (int ) ;
 int memset (struct of_phandle_args*,int ,int) ;

__attribute__((used)) static int pinctrl_copy_args(const struct device_node *np,
        const __be32 *list,
        int index, int nr_cells, int nr_elem,
        struct of_phandle_args *out_args)
{
 int i;

 memset(out_args, 0, sizeof(*out_args));
 out_args->np = (struct device_node *)np;
 out_args->args_count = nr_cells + 1;

 if (index >= nr_elem)
  return -EINVAL;

 list += index * (nr_cells + 1);

 for (i = 0; i < nr_cells + 1; i++)
  out_args->args[i] = be32_to_cpup(list++);

 return 0;
}
