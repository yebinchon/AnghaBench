
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be64 ;


 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 int be64_to_cpup (int *) ;
 int * of_find_property_value_of_size (struct device_node const*,char const*,int,int ,int *) ;

int of_property_read_u64_index(const struct device_node *np,
           const char *propname,
           u32 index, u64 *out_value)
{
 const u64 *val = of_find_property_value_of_size(np, propname,
     ((index + 1) * sizeof(*out_value)),
     0, ((void*)0));

 if (IS_ERR(val))
  return PTR_ERR(val);

 *out_value = be64_to_cpup(((__be64 *)val) + index);
 return 0;
}
