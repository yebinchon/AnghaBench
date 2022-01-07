
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iproc_pcie {int phy; int root_bus; } ;


 int iproc_pcie_msi_disable (struct iproc_pcie*) ;
 int pci_remove_root_bus (int ) ;
 int pci_stop_root_bus (int ) ;
 int phy_exit (int ) ;
 int phy_power_off (int ) ;

int iproc_pcie_remove(struct iproc_pcie *pcie)
{
 pci_stop_root_bus(pcie->root_bus);
 pci_remove_root_bus(pcie->root_bus);

 iproc_pcie_msi_disable(pcie);

 phy_power_off(pcie->phy);
 phy_exit(pcie->phy);

 return 0;
}
