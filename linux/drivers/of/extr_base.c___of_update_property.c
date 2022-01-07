
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; int name; } ;
struct device_node {struct property* deadprops; struct property* properties; } ;


 scalar_t__ of_prop_cmp (int ,int ) ;

int __of_update_property(struct device_node *np, struct property *newprop,
  struct property **oldpropp)
{
 struct property **next, *oldprop;

 for (next = &np->properties; *next; next = &(*next)->next) {
  if (of_prop_cmp((*next)->name, newprop->name) == 0)
   break;
 }
 *oldpropp = oldprop = *next;

 if (oldprop) {

  newprop->next = oldprop->next;
  *next = newprop;
  oldprop->next = np->deadprops;
  np->deadprops = oldprop;
 } else {

  newprop->next = ((void*)0);
  *next = newprop;
 }

 return 0;
}
