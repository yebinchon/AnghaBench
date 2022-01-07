
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_resource {struct pci_resource* next; } ;



__attribute__((used)) static inline void return_resource(struct pci_resource **head,
       struct pci_resource *node)
{
 if (!node || !head)
  return;
 node->next = *head;
 *head = node;
}
