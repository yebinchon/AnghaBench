
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_property {int type; int list; int key; } ;
typedef enum tb_property_type { ____Placeholder_tb_property_type } tb_property_type ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct tb_property* kzalloc (int,int ) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static struct tb_property *
tb_property_alloc(const char *key, enum tb_property_type type)
{
 struct tb_property *property;

 property = kzalloc(sizeof(*property), GFP_KERNEL);
 if (!property)
  return ((void*)0);

 strcpy(property->key, key);
 property->type = type;
 INIT_LIST_HEAD(&property->list);

 return property;
}
