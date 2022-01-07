
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct property {void* value; size_t length; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODATA ;
 int EOVERFLOW ;
 void* ERR_PTR (int ) ;
 struct property* of_find_property (struct device_node const*,char const*,int *) ;

__attribute__((used)) static void *of_find_property_value_of_size(const struct device_node *np,
   const char *propname, u32 min, u32 max, size_t *len)
{
 struct property *prop = of_find_property(np, propname, ((void*)0));

 if (!prop)
  return ERR_PTR(-EINVAL);
 if (!prop->value)
  return ERR_PTR(-ENODATA);
 if (prop->length < min)
  return ERR_PTR(-EOVERFLOW);
 if (max && prop->length > max)
  return ERR_PTR(-EOVERFLOW);

 if (len)
  *len = prop->length;

 return prop->value;
}
