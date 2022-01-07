
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_slot {int number; TYPE_1__* bus; } ;
typedef int ssize_t ;
struct TYPE_2__ {int number; } ;


 int pci_domain_nr (TYPE_1__*) ;
 int sprintf (char*,char*,int,int,...) ;

__attribute__((used)) static ssize_t address_read_file(struct pci_slot *slot, char *buf)
{
 if (slot->number == 0xff)
  return sprintf(buf, "%04x:%02x\n",
    pci_domain_nr(slot->bus),
    slot->bus->number);
 else
  return sprintf(buf, "%04x:%02x:%02x\n",
    pci_domain_nr(slot->bus),
    slot->bus->number,
    slot->number);
}
