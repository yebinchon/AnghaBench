
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_property_dir {int properties; } ;
struct TYPE_2__ {struct tb_property_dir* dir; } ;
struct tb_property {int list; TYPE_1__ value; } ;


 int EINVAL ;
 int ENOMEM ;
 int TB_PROPERTY_TYPE_DIRECTORY ;
 int list_add_tail (int *,int *) ;
 struct tb_property* tb_property_alloc (char const*,int ) ;
 int tb_property_key_valid (char const*) ;

int tb_property_add_dir(struct tb_property_dir *parent, const char *key,
   struct tb_property_dir *dir)
{
 struct tb_property *property;

 if (!tb_property_key_valid(key))
  return -EINVAL;

 property = tb_property_alloc(key, TB_PROPERTY_TYPE_DIRECTORY);
 if (!property)
  return -ENOMEM;

 property->value.dir = dir;

 list_add_tail(&property->list, &parent->properties);
 return 0;
}
