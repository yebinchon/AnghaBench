
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_property_dir {int properties; } ;
struct TYPE_2__ {int text; } ;
struct tb_property {size_t length; int list; TYPE_1__ value; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TB_PROPERTY_TYPE_TEXT ;
 int kfree (struct tb_property*) ;
 int kzalloc (size_t,int ) ;
 int list_add_tail (int *,int *) ;
 size_t round_up (scalar_t__,int) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;
 struct tb_property* tb_property_alloc (char const*,int ) ;
 int tb_property_key_valid (char const*) ;

int tb_property_add_text(struct tb_property_dir *parent, const char *key,
    const char *text)
{

 size_t size = round_up(strlen(text) + 1, 4);
 struct tb_property *property;

 if (!tb_property_key_valid(key))
  return -EINVAL;

 property = tb_property_alloc(key, TB_PROPERTY_TYPE_TEXT);
 if (!property)
  return -ENOMEM;

 property->length = size / 4;
 property->value.text = kzalloc(size, GFP_KERNEL);
 if (!property->value.text) {
  kfree(property);
  return -ENOMEM;
 }

 strcpy(property->value.text, text);

 list_add_tail(&property->list, &parent->properties);
 return 0;
}
