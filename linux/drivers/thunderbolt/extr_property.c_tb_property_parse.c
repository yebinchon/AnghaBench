
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_property_entry {int length; int value; int type; } ;
typedef struct tb_property_entry u32 ;
struct tb_property_dir {int dummy; } ;
struct TYPE_2__ {char* data; char* text; int immediate; struct tb_property_dir* dir; } ;
struct tb_property {int length; int type; TYPE_1__ value; } ;


 int GFP_KERNEL ;
 int TB_PROPERTY_KEY_SIZE ;



 int TB_PROPERTY_TYPE_UNKNOWN ;

 struct tb_property_dir* __tb_property_parse_dir (struct tb_property_entry const*,size_t,int ,int,int) ;
 void* kcalloc (int,int,int ) ;
 int kfree (struct tb_property*) ;
 int parse_dwdata (char*,struct tb_property_entry const*,int) ;
 struct tb_property* tb_property_alloc (char*,int ) ;
 int tb_property_entry_valid (struct tb_property_entry const*,size_t) ;

__attribute__((used)) static struct tb_property *tb_property_parse(const u32 *block, size_t block_len,
     const struct tb_property_entry *entry)
{
 char key[TB_PROPERTY_KEY_SIZE + 1];
 struct tb_property *property;
 struct tb_property_dir *dir;

 if (!tb_property_entry_valid(entry, block_len))
  return ((void*)0);

 parse_dwdata(key, entry, 2);
 key[TB_PROPERTY_KEY_SIZE] = '\0';

 property = tb_property_alloc(key, entry->type);
 if (!property)
  return ((void*)0);

 property->length = entry->length;

 switch (property->type) {
 case 130:
  dir = __tb_property_parse_dir(block, block_len, entry->value,
           entry->length, 0);
  if (!dir) {
   kfree(property);
   return ((void*)0);
  }
  property->value.dir = dir;
  break;

 case 131:
  property->value.data = kcalloc(property->length, sizeof(u32),
            GFP_KERNEL);
  if (!property->value.data) {
   kfree(property);
   return ((void*)0);
  }
  parse_dwdata(property->value.data, block + entry->value,
        entry->length);
  break;

 case 129:
  property->value.text = kcalloc(property->length, sizeof(u32),
            GFP_KERNEL);
  if (!property->value.text) {
   kfree(property);
   return ((void*)0);
  }
  parse_dwdata(property->value.text, block + entry->value,
        entry->length);

  property->value.text[property->length * 4 - 1] = '\0';
  break;

 case 128:
  property->value.immediate = entry->value;
  break;

 default:
  property->type = TB_PROPERTY_TYPE_UNKNOWN;
  break;
 }

 return property;
}
