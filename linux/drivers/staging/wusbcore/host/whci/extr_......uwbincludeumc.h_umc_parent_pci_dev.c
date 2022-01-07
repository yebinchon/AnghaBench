
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct pci_dev {int dummy; } ;


 scalar_t__ dev_is_pci (int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static inline struct pci_dev *umc_parent_pci_dev(struct umc_dev *umc_dev)
{
 struct pci_dev *pci_dev = ((void*)0);
 if (dev_is_pci(umc_dev->dev.parent))
  pci_dev = to_pci_dev(umc_dev->dev.parent);
 return pci_dev;
}
