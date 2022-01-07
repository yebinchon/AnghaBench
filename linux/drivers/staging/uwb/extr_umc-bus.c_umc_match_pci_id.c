
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct umc_driver {struct pci_device_id* match_data; } ;
struct TYPE_2__ {int parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;


 int dev_is_pci (int ) ;
 int * pci_match_id (struct pci_device_id const*,struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

int umc_match_pci_id(struct umc_driver *umc_drv, struct umc_dev *umc)
{
 const struct pci_device_id *id_table = umc_drv->match_data;
 struct pci_dev *pci;

 if (!dev_is_pci(umc->dev.parent))
  return 0;

 pci = to_pci_dev(umc->dev.parent);
 return pci_match_id(id_table, pci) != ((void*)0);
}
