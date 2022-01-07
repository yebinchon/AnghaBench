
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
 int pr_debug (char*,char const*,char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strnlen (char const*,int) ;

int of_property_match_string(const struct device_node *np, const char *propname,
        const char *string)
{
 const struct property *prop = of_find_property(np, propname, ((void*)0));
 size_t l;
 int i;
 const char *p, *end;

 if (!prop)
  return -EINVAL;
 if (!prop->value)
  return -ENODATA;

 p = prop->value;
 end = p + prop->length;

 for (i = 0; p < end; i++, p += l) {
  l = strnlen(p, end - p) + 1;
  if (p + l > end)
   return -EILSEQ;
  pr_debug("comparing %s with %s\n", string, p);
  if (strcmp(string, p) == 0)
   return i;
 }
 return -ENODATA;
}
