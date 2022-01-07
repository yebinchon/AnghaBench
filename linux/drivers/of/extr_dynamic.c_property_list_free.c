
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* value; struct property* name; struct property* next; } ;


 int kfree (struct property*) ;

__attribute__((used)) static void property_list_free(struct property *prop_list)
{
 struct property *prop, *next;

 for (prop = prop_list; prop != ((void*)0); prop = next) {
  next = prop->next;
  kfree(prop->name);
  kfree(prop->value);
  kfree(prop);
 }
}
