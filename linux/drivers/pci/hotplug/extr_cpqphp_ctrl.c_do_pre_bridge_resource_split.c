
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_resource {scalar_t__ base; scalar_t__ length; struct pci_resource* next; } ;


 int GFP_KERNEL ;
 int cpqhp_resource_sort_and_combine (struct pci_resource**) ;
 int dbg (char*) ;
 struct pci_resource* kmalloc (int,int ) ;

__attribute__((used)) static struct pci_resource *do_pre_bridge_resource_split(struct pci_resource **head,
    struct pci_resource **orig_head, u32 alignment)
{
 struct pci_resource *prevnode = ((void*)0);
 struct pci_resource *node;
 struct pci_resource *split_node;
 u32 rc;
 u32 temp_dword;
 dbg("do_pre_bridge_resource_split\n");

 if (!(*head) || !(*orig_head))
  return ((void*)0);

 rc = cpqhp_resource_sort_and_combine(head);

 if (rc)
  return ((void*)0);

 if ((*head)->base != (*orig_head)->base)
  return ((void*)0);

 if ((*head)->length == (*orig_head)->length)
  return ((void*)0);






 node = *head;

 if (node->length & (alignment - 1)) {



  split_node = kmalloc(sizeof(*split_node), GFP_KERNEL);

  if (!split_node)
   return ((void*)0);

  temp_dword = (node->length | (alignment-1)) + 1 - alignment;

  split_node->base = node->base;
  split_node->length = temp_dword;

  node->length -= temp_dword;
  node->base += split_node->length;


  *head = split_node;
  split_node->next = node;
 }

 if (node->length < alignment)
  return ((void*)0);


 if (*head == node) {
  *head = node->next;
 } else {
  prevnode = *head;
  while (prevnode->next != node)
   prevnode = prevnode->next;

  prevnode->next = node->next;
 }
 node->next = ((void*)0);

 return node;
}
