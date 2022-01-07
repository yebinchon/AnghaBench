
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int * aer_stats; } ;


 int kfree (int *) ;

void pci_aer_exit(struct pci_dev *dev)
{
 kfree(dev->aer_stats);
 dev->aer_stats = ((void*)0);
}
