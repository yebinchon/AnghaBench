
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 scalar_t__ PCI_HEADER_TYPE ;
 int PCI_HEADER_TYPE_BRIDGE ;
 int iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static void ls_pcie_clear_multifunction(struct ls_pcie *pcie)
{
 struct dw_pcie *pci = pcie->pci;

 iowrite8(PCI_HEADER_TYPE_BRIDGE, pci->dbi_base + PCI_HEADER_TYPE);
}
