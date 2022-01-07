
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_port {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct keystone_pcie {TYPE_1__ app; } ;
struct dw_pcie {int dummy; } ;


 int PCI_BASE_ADDRESS_0 ;
 int SZ_4K ;
 int dw_pcie_writel_dbi (struct dw_pcie*,int ,int) ;
 int ks_pcie_clear_dbi_mode (struct keystone_pcie*) ;
 int ks_pcie_set_dbi_mode (struct keystone_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct keystone_pcie* to_keystone_pcie (struct dw_pcie*) ;

__attribute__((used)) static void ks_pcie_v3_65_scan_bus(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct keystone_pcie *ks_pcie = to_keystone_pcie(pci);


 ks_pcie_set_dbi_mode(ks_pcie);


 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, 1);
 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, SZ_4K - 1);

 ks_pcie_clear_dbi_mode(ks_pcie);





 dw_pcie_writel_dbi(pci, PCI_BASE_ADDRESS_0, ks_pcie->app.start);
}
