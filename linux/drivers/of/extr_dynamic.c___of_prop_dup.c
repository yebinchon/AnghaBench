
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* value; struct property* name; int length; } ;
typedef int gfp_t ;


 int OF_DYNAMIC ;
 int kfree (struct property*) ;
 struct property* kmemdup (struct property*,int ,int ) ;
 struct property* kstrdup (struct property*,int ) ;
 struct property* kzalloc (int,int ) ;
 int of_property_set_flag (struct property*,int ) ;

struct property *__of_prop_dup(const struct property *prop, gfp_t allocflags)
{
 struct property *new;

 new = kzalloc(sizeof(*new), allocflags);
 if (!new)
  return ((void*)0);







 new->name = kstrdup(prop->name, allocflags);
 new->value = kmemdup(prop->value, prop->length, allocflags);
 new->length = prop->length;
 if (!new->name || !new->value)
  goto err_free;


 of_property_set_flag(new, OF_DYNAMIC);

 return new;

 err_free:
 kfree(new->name);
 kfree(new->value);
 kfree(new);
 return ((void*)0);
}
