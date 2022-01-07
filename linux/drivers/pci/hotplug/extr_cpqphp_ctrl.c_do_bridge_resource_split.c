
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_resource {int length; int base; struct pci_resource* next; } ;


 int cpqhp_resource_sort_and_combine (struct pci_resource**) ;
 int kfree (struct pci_resource*) ;

__attribute__((used)) static struct pci_resource *do_bridge_resource_split(struct pci_resource **head, u32 alignment)
{
 struct pci_resource *prevnode = ((void*)0);
 struct pci_resource *node;
 u32 rc;
 u32 temp_dword;

 rc = cpqhp_resource_sort_and_combine(head);

 if (rc)
  return ((void*)0);

 node = *head;

 while (node->next) {
  prevnode = node;
  node = node->next;
  kfree(prevnode);
 }

 if (node->length < alignment)
  goto error;

 if (node->base & (alignment - 1)) {

  temp_dword = (node->base | (alignment-1)) + 1;
  if ((node->length - (temp_dword - node->base)) < alignment)
   goto error;

  node->length -= (temp_dword - node->base);
  node->base = temp_dword;
 }

 if (node->length & (alignment - 1))

  goto error;

 return node;
error:
 kfree(node);
 return ((void*)0);
}
