
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int full_name; } ;


 char* kbasename (int ) ;
 int of_node_cmp (char const*,char const*) ;

__attribute__((used)) static int node_name_cmp(const struct device_node *dn1,
  const struct device_node *dn2)
{
 const char *n1 = kbasename(dn1->full_name);
 const char *n2 = kbasename(dn2->full_name);

 return of_node_cmp(n1, n2);
}
