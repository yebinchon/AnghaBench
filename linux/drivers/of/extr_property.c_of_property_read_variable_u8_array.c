
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_node {int dummy; } ;


 scalar_t__ IS_ERR (int const*) ;
 int PTR_ERR (int const*) ;
 int * of_find_property_value_of_size (struct device_node const*,char const*,size_t,size_t,size_t*) ;

int of_property_read_variable_u8_array(const struct device_node *np,
     const char *propname, u8 *out_values,
     size_t sz_min, size_t sz_max)
{
 size_t sz, count;
 const u8 *val = of_find_property_value_of_size(np, propname,
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
  *out_values++ = *val++;

 return sz;
}
