
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* bus; } ;
struct msi_desc {int dummy; } ;
struct TYPE_2__ {void* sysdata; } ;


 struct pci_dev* msi_desc_to_pci_dev (struct msi_desc*) ;

void *msi_desc_to_pci_sysdata(struct msi_desc *desc)
{
 struct pci_dev *dev = msi_desc_to_pci_dev(desc);

 return dev->bus->sysdata;
}
