
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {scalar_t__ dbi_base; } ;


 scalar_t__ PCIE_ABSERR ;
 int PCIE_ABSERR_SETTING ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void ls_pcie_fix_error_response(struct ls_pcie *pcie)
{
 struct dw_pcie *pci = pcie->pci;

 iowrite32(PCIE_ABSERR_SETTING, pci->dbi_base + PCIE_ABSERR);
}
