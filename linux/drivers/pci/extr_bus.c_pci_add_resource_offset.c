
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_entry {int offset; } ;
struct resource {int dummy; } ;
struct list_head {int dummy; } ;
typedef int resource_size_t ;


 int pr_err (char*,struct resource*) ;
 int resource_list_add_tail (struct resource_entry*,struct list_head*) ;
 struct resource_entry* resource_list_create_entry (struct resource*,int ) ;

void pci_add_resource_offset(struct list_head *resources, struct resource *res,
        resource_size_t offset)
{
 struct resource_entry *entry;

 entry = resource_list_create_entry(res, 0);
 if (!entry) {
  pr_err("PCI: can't add host bridge window %pR\n", res);
  return;
 }

 entry->offset = offset;
 resource_list_add_tail(entry, resources);
}
