
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 int * of_find_property_value_of_size (struct device_node const*,char const*,int,int ,int *) ;
 int of_read_number (int const*,int) ;

int of_property_read_u64(const struct device_node *np, const char *propname,
    u64 *out_value)
{
 const __be32 *val = of_find_property_value_of_size(np, propname,
      sizeof(*out_value),
      0,
      ((void*)0));

 if (IS_ERR(val))
  return PTR_ERR(val);

 *out_value = of_read_number(val, 2);
 return 0;
}
