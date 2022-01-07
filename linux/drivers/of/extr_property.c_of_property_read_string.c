
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* value; scalar_t__ length; } ;
struct device_node {int dummy; } ;


 int EILSEQ ;
 int EINVAL ;
 int ENODATA ;
 struct property* of_find_property (struct device_node const*,char const*,int *) ;
 scalar_t__ strnlen (char*,scalar_t__) ;

int of_property_read_string(const struct device_node *np, const char *propname,
    const char **out_string)
{
 const struct property *prop = of_find_property(np, propname, ((void*)0));
 if (!prop)
  return -EINVAL;
 if (!prop->value)
  return -ENODATA;
 if (strnlen(prop->value, prop->length) >= prop->length)
  return -EILSEQ;
 *out_string = prop->value;
 return 0;
}
