
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear13xx_pcie {int dummy; } ;
struct pcie_port {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int spear13xx_pcie_enable_interrupts (struct spear13xx_pcie*) ;
 int spear13xx_pcie_establish_link (struct spear13xx_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct spear13xx_pcie* to_spear13xx_pcie (struct dw_pcie*) ;

__attribute__((used)) static int spear13xx_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct spear13xx_pcie *spear13xx_pcie = to_spear13xx_pcie(pci);

 spear13xx_pcie_establish_link(spear13xx_pcie);
 spear13xx_pcie_enable_interrupts(spear13xx_pcie);

 return 0;
}
