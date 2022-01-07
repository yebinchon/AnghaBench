
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int dw_pcie_wait_for_link (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int dw_plat_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);

 dw_pcie_setup_rc(pp);
 dw_pcie_wait_for_link(pci);

 if (IS_ENABLED(CONFIG_PCI_MSI))
  dw_pcie_msi_init(pp);

 return 0;
}
