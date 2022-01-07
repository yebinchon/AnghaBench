
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_property_entry {int type; size_t length; size_t value; } ;







__attribute__((used)) static bool tb_property_entry_valid(const struct tb_property_entry *entry,
      size_t block_len)
{
 switch (entry->type) {
 case 130:
 case 131:
 case 129:
  if (entry->length > block_len)
   return 0;
  if (entry->value + entry->length > block_len)
   return 0;
  break;

 case 128:
  if (entry->length != 1)
   return 0;
  break;
 }

 return 1;
}
