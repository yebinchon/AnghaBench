
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pcie_port {scalar_t__ cfg0_base; } ;
struct dw_pcie_ep {scalar_t__ phys_base; } ;
struct dw_pcie {int dev; struct dw_pcie_ep ep; struct pcie_port pp; } ;
struct artpec6_pcie {int mode; } ;




 int dev_err (int ,char*) ;
 struct artpec6_pcie* to_artpec6_pcie (struct dw_pcie*) ;

__attribute__((used)) static u64 artpec6_pcie_cpu_addr_fixup(struct dw_pcie *pci, u64 pci_addr)
{
 struct artpec6_pcie *artpec6_pcie = to_artpec6_pcie(pci);
 struct pcie_port *pp = &pci->pp;
 struct dw_pcie_ep *ep = &pci->ep;

 switch (artpec6_pcie->mode) {
 case 128:
  return pci_addr - pp->cfg0_base;
 case 129:
  return pci_addr - ep->phys_base;
 default:
  dev_err(pci->dev, "UNKNOWN device type\n");
 }
 return pci_addr;
}
