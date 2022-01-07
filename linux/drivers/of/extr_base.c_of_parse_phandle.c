
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {struct device_node* np; } ;
struct device_node {int dummy; } ;


 scalar_t__ __of_parse_phandle_with_args (struct device_node const*,char const*,int *,int ,int,struct of_phandle_args*) ;

struct device_node *of_parse_phandle(const struct device_node *np,
         const char *phandle_name, int index)
{
 struct of_phandle_args args;

 if (index < 0)
  return ((void*)0);

 if (__of_parse_phandle_with_args(np, phandle_name, ((void*)0), 0,
      index, &args))
  return ((void*)0);

 return args.np;
}
