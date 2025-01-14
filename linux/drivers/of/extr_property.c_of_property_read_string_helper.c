
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {char* value; int length; } ;
struct device_node {int dummy; } ;


 int EILSEQ ;
 int EINVAL ;
 int ENODATA ;
 struct property* of_find_property (struct device_node const*,char const*,int *) ;
 int strnlen (char const*,int) ;

int of_property_read_string_helper(const struct device_node *np,
       const char *propname, const char **out_strs,
       size_t sz, int skip)
{
 const struct property *prop = of_find_property(np, propname, ((void*)0));
 int l = 0, i = 0;
 const char *p, *end;

 if (!prop)
  return -EINVAL;
 if (!prop->value)
  return -ENODATA;
 p = prop->value;
 end = p + prop->length;

 for (i = 0; p < end && (!out_strs || i < skip + sz); i++, p += l) {
  l = strnlen(p, end - p) + 1;
  if (p + l > end)
   return -EILSEQ;
  if (out_strs && i >= skip)
   *out_strs++ = p;
 }
 i -= skip;
 return i <= 0 ? -ENODATA : i;
}
