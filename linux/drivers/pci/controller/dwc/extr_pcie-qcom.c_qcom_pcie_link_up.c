
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 scalar_t__ PCIE20_CAP ;
 scalar_t__ PCI_EXP_LNKSTA ;
 int PCI_EXP_LNKSTA_DLLLA ;
 int readw (scalar_t__) ;

__attribute__((used)) static int qcom_pcie_link_up(struct dw_pcie *pci)
{
 u16 val = readw(pci->dbi_base + PCIE20_CAP + PCI_EXP_LNKSTA);

 return !!(val & PCI_EXP_LNKSTA_DLLLA);
}
