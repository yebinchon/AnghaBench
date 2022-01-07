
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;
struct device_node {struct property* deadprops; struct property* properties; } ;


 int ENODEV ;

int __of_remove_property(struct device_node *np, struct property *prop)
{
 struct property **next;

 for (next = &np->properties; *next; next = &(*next)->next) {
  if (*next == prop)
   break;
 }
 if (*next == ((void*)0))
  return -ENODEV;


 *next = prop->next;
 prop->next = np->deadprops;
 np->deadprops = prop;

 return 0;
}
