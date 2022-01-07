
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct timing_entry {int min; int typ; int max; } ;
struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 struct property* of_find_property (struct device_node const*,char const*,int*) ;
 int of_property_read_u32 (struct device_node const*,char const*,int *) ;
 int of_property_read_u32_array (struct device_node const*,char const*,int *,int) ;
 int pr_err (char*,struct device_node const*,char const*) ;

__attribute__((used)) static int parse_timing_property(const struct device_node *np, const char *name,
     struct timing_entry *result)
{
 struct property *prop;
 int length, cells, ret;

 prop = of_find_property(np, name, &length);
 if (!prop) {
  pr_err("%pOF: could not find property %s\n", np, name);
  return -EINVAL;
 }

 cells = length / sizeof(u32);
 if (cells == 1) {
  ret = of_property_read_u32(np, name, &result->typ);
  result->min = result->typ;
  result->max = result->typ;
 } else if (cells == 3) {
  ret = of_property_read_u32_array(np, name, &result->min, cells);
 } else {
  pr_err("%pOF: illegal timing specification in %s\n", np, name);
  return -EINVAL;
 }

 return ret;
}
