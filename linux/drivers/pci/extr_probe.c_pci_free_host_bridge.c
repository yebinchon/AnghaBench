
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int dma_ranges; int windows; } ;


 int kfree (struct pci_host_bridge*) ;
 int pci_free_resource_list (int *) ;

void pci_free_host_bridge(struct pci_host_bridge *bridge)
{
 pci_free_resource_list(&bridge->windows);
 pci_free_resource_list(&bridge->dma_ranges);

 kfree(bridge);
}
