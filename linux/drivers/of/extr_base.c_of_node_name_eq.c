
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; } ;


 char* kbasename (int ) ;
 char const* strchrnul (char const*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

bool of_node_name_eq(const struct device_node *np, const char *name)
{
 const char *node_name;
 size_t len;

 if (!np)
  return 0;

 node_name = kbasename(np->full_name);
 len = strchrnul(node_name, '@') - node_name;

 return (strlen(name) == len) && (strncmp(node_name, name, len) == 0);
}
