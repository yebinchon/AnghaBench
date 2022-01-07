
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; } ;


 int kbasename (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (int ,char const*,int ) ;

bool of_node_name_prefix(const struct device_node *np, const char *prefix)
{
 if (!np)
  return 0;

 return strncmp(kbasename(np->full_name), prefix, strlen(prefix)) == 0;
}
