
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tb_property_dir {int properties; } ;
struct TYPE_2__ {int immediate; } ;
struct tb_property {int length; int list; TYPE_1__ value; } ;


 int EINVAL ;
 int ENOMEM ;
 int TB_PROPERTY_TYPE_VALUE ;
 int list_add_tail (int *,int *) ;
 struct tb_property* tb_property_alloc (char const*,int ) ;
 int tb_property_key_valid (char const*) ;

int tb_property_add_immediate(struct tb_property_dir *parent, const char *key,
         u32 value)
{
 struct tb_property *property;

 if (!tb_property_key_valid(key))
  return -EINVAL;

 property = tb_property_alloc(key, TB_PROPERTY_TYPE_VALUE);
 if (!property)
  return -ENOMEM;

 property->length = 1;
 property->value.immediate = value;

 list_add_tail(&property->list, &parent->properties);
 return 0;
}
