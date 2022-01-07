
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_epc {int dev; int group; } ;


 int device_unregister (int *) ;
 int kfree (struct pci_epc*) ;
 int pci_ep_cfs_remove_epc_group (int ) ;

void pci_epc_destroy(struct pci_epc *epc)
{
 pci_ep_cfs_remove_epc_group(epc->group);
 device_unregister(&epc->dev);
 kfree(epc);
}
