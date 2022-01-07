
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct device_node {int dummy; } ;


 int INT_MAX ;
 struct property* __of_find_property (struct device_node const*,char*,int *) ;
 int __of_node_is_type (struct device_node const*,char const*) ;
 scalar_t__ of_compat_cmp (char const*,char const*,int ) ;
 int of_node_name_eq (struct device_node const*,char const*) ;
 char* of_prop_next_string (struct property*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int __of_device_is_compatible(const struct device_node *device,
         const char *compat, const char *type, const char *name)
{
 struct property *prop;
 const char *cp;
 int index = 0, score = 0;


 if (compat && compat[0]) {
  prop = __of_find_property(device, "compatible", ((void*)0));
  for (cp = of_prop_next_string(prop, ((void*)0)); cp;
       cp = of_prop_next_string(prop, cp), index++) {
   if (of_compat_cmp(cp, compat, strlen(compat)) == 0) {
    score = INT_MAX/2 - (index << 2);
    break;
   }
  }
  if (!score)
   return 0;
 }


 if (type && type[0]) {
  if (!__of_node_is_type(device, type))
   return 0;
  score += 2;
 }


 if (name && name[0]) {
  if (!of_node_name_eq(device, name))
   return 0;
  score++;
 }

 return score;
}
