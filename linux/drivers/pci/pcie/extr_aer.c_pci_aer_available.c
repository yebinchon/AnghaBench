
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pci_msi_enabled () ;
 int pcie_aer_disable ;

bool pci_aer_available(void)
{
 return !pcie_aer_disable && pci_msi_enabled();
}
