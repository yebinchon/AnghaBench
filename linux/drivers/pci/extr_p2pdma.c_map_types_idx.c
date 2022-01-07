
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;


 int pci_domain_nr (TYPE_1__*) ;

__attribute__((used)) static unsigned long map_types_idx(struct pci_dev *client)
{
 return (pci_domain_nr(client->bus) << 16) |
  (client->bus->number << 8) | client->devfn;
}
