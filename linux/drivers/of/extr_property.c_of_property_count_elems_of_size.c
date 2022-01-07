
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int length; int value; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENODATA ;
 struct property* of_find_property (struct device_node const*,char const*,int *) ;
 int pr_err (char*,char const*,struct device_node const*,int) ;

int of_property_count_elems_of_size(const struct device_node *np,
    const char *propname, int elem_size)
{
 struct property *prop = of_find_property(np, propname, ((void*)0));

 if (!prop)
  return -EINVAL;
 if (!prop->value)
  return -ENODATA;

 if (prop->length % elem_size != 0) {
  pr_err("size of %s in node %pOF is not a multiple of %d\n",
         propname, np, elem_size);
  return -EINVAL;
 }

 return prop->length / elem_size;
}
