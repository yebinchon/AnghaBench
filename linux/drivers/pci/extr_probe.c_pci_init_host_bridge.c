
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_host_bridge {int native_aer; int native_pcie_hotplug; int native_shpc_hotplug; int native_pme; int native_ltr; int dma_ranges; int windows; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void pci_init_host_bridge(struct pci_host_bridge *bridge)
{
 INIT_LIST_HEAD(&bridge->windows);
 INIT_LIST_HEAD(&bridge->dma_ranges);







 bridge->native_aer = 1;
 bridge->native_pcie_hotplug = 1;
 bridge->native_shpc_hotplug = 1;
 bridge->native_pme = 1;
 bridge->native_ltr = 1;
}
