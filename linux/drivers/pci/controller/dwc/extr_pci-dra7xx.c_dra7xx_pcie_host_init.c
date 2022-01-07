
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;
struct dra7xx_pcie {int dummy; } ;


 int dra7xx_pcie_enable_interrupts (struct dra7xx_pcie*) ;
 int dra7xx_pcie_establish_link (struct dw_pcie*) ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int dw_pcie_wait_for_link (struct dw_pcie*) ;
 struct dra7xx_pcie* to_dra7xx_pcie (struct dw_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;

__attribute__((used)) static int dra7xx_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct dra7xx_pcie *dra7xx = to_dra7xx_pcie(pci);

 dw_pcie_setup_rc(pp);

 dra7xx_pcie_establish_link(pci);
 dw_pcie_wait_for_link(pci);
 dw_pcie_msi_init(pp);
 dra7xx_pcie_enable_interrupts(dra7xx);

 return 0;
}
