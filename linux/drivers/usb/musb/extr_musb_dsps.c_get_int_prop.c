
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;


 int of_property_read_u32 (struct device_node*,char const*,int*) ;

__attribute__((used)) static int get_int_prop(struct device_node *dn, const char *s)
{
 int ret;
 u32 val;

 ret = of_property_read_u32(dn, s, &val);
 if (ret)
  return 0;
 return val;
}
