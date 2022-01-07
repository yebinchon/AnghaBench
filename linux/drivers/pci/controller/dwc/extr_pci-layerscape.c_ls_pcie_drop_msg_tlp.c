
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ls_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 scalar_t__ PCIE_STRFMR1 ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ls_pcie_drop_msg_tlp(struct ls_pcie *pcie)
{
 u32 val;
 struct dw_pcie *pci = pcie->pci;

 val = ioread32(pci->dbi_base + PCIE_STRFMR1);
 val &= 0xDFFFFFFF;
 iowrite32(val, pci->dbi_base + PCIE_STRFMR1);
}
