
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pci_func {int configured; struct pci_func* next; } ;


 int GFP_KERNEL ;
 struct pci_func** cpqhp_slot_list ;
 struct pci_func* kzalloc (int,int ) ;

struct pci_func *cpqhp_slot_create(u8 busnumber)
{
 struct pci_func *new_slot;
 struct pci_func *next;

 new_slot = kzalloc(sizeof(*new_slot), GFP_KERNEL);
 if (new_slot == ((void*)0))
  return new_slot;

 new_slot->next = ((void*)0);
 new_slot->configured = 1;

 if (cpqhp_slot_list[busnumber] == ((void*)0)) {
  cpqhp_slot_list[busnumber] = new_slot;
 } else {
  next = cpqhp_slot_list[busnumber];
  while (next->next != ((void*)0))
   next = next->next;
  next->next = new_slot;
 }
 return new_slot;
}
