
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device_node {int dummy; } ;
typedef int __be16 ;


 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 int be16_to_cpup (int ) ;
 int * of_find_property_value_of_size (struct device_node const*,char const*,size_t,size_t,size_t*) ;

int of_property_read_variable_u16_array(const struct device_node *np,
     const char *propname, u16 *out_values,
     size_t sz_min, size_t sz_max)
{
 size_t sz, count;
 const __be16 *val = of_find_property_value_of_size(np, propname,
      (sz_min * sizeof(*out_values)),
      (sz_max * sizeof(*out_values)),
      &sz);

 if (IS_ERR(val))
  return PTR_ERR(val);

 if (!sz_max)
  sz = sz_min;
 else
  sz /= sizeof(*out_values);

 count = sz;
 while (count--)
  *out_values++ = be16_to_cpup(val++);

 return sz;
}
