
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_resource {int length; int base; struct pci_resource* next; } ;


 int GFP_KERNEL ;
 scalar_t__ cpqhp_resource_sort_and_combine (struct pci_resource**) ;
 struct pci_resource* kmalloc (int,int ) ;
 scalar_t__ sort_by_max_size (struct pci_resource**) ;

__attribute__((used)) static struct pci_resource *get_max_resource(struct pci_resource **head, u32 size)
{
 struct pci_resource *max;
 struct pci_resource *temp;
 struct pci_resource *split_node;
 u32 temp_dword;

 if (cpqhp_resource_sort_and_combine(head))
  return ((void*)0);

 if (sort_by_max_size(head))
  return ((void*)0);

 for (max = *head; max; max = max->next) {



  if (max->length < size)
   continue;

  if (max->base & (size - 1)) {



   temp_dword = (max->base | (size-1)) + 1;


   if ((max->length - (temp_dword - max->base)) < size)
    continue;

   split_node = kmalloc(sizeof(*split_node), GFP_KERNEL);

   if (!split_node)
    return ((void*)0);

   split_node->base = max->base;
   split_node->length = temp_dword - max->base;
   max->base = temp_dword;
   max->length -= split_node->length;

   split_node->next = max->next;
   max->next = split_node;
  }

  if ((max->base + max->length) & (size - 1)) {



   split_node = kmalloc(sizeof(*split_node), GFP_KERNEL);

   if (!split_node)
    return ((void*)0);
   temp_dword = ((max->base + max->length) & ~(size - 1));
   split_node->base = temp_dword;
   split_node->length = max->length + max->base
          - split_node->base;
   max->length -= split_node->length;

   split_node->next = max->next;
   max->next = split_node;
  }


  if (max->length < size)
   continue;


  temp = *head;
  if (temp == max) {
   *head = max->next;
  } else {
   while (temp && temp->next != max)
    temp = temp->next;

   if (temp)
    temp->next = max->next;
  }

  max->next = ((void*)0);
  break;
 }

 return max;
}
