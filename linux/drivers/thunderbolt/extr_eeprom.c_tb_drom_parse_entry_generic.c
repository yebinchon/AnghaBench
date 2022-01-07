
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tb_switch {void* device_name; void* vendor_name; } ;
struct tb_drom_entry_header {int index; int len; } ;
struct tb_drom_entry_generic {int data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* kstrndup (int ,int ,int ) ;

__attribute__((used)) static int tb_drom_parse_entry_generic(struct tb_switch *sw,
  struct tb_drom_entry_header *header)
{
 const struct tb_drom_entry_generic *entry =
  (const struct tb_drom_entry_generic *)header;

 switch (header->index) {
 case 1:

  sw->vendor_name = kstrndup(entry->data,
   header->len - sizeof(*header), GFP_KERNEL);
  if (!sw->vendor_name)
   return -ENOMEM;
  break;

 case 2:
  sw->device_name = kstrndup(entry->data,
   header->len - sizeof(*header), GFP_KERNEL);
  if (!sw->device_name)
   return -ENOMEM;
  break;
 }

 return 0;
}
