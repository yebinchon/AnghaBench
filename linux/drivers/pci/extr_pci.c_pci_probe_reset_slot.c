
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_slot {int dummy; } ;


 int pci_slot_reset (struct pci_slot*,int) ;

int pci_probe_reset_slot(struct pci_slot *slot)
{
 return pci_slot_reset(slot, 1);
}
