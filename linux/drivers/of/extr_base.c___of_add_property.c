
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; int name; } ;
struct device_node {struct property* properties; } ;


 int EEXIST ;
 scalar_t__ strcmp (int ,int ) ;

int __of_add_property(struct device_node *np, struct property *prop)
{
 struct property **next;

 prop->next = ((void*)0);
 next = &np->properties;
 while (*next) {
  if (strcmp(prop->name, (*next)->name) == 0)

   return -EEXIST;

  next = &(*next)->next;
 }
 *next = prop;

 return 0;
}
