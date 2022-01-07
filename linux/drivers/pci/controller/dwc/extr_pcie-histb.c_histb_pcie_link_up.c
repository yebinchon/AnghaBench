
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct histb_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int PCIE_LTSSM_STATE_ACTIVE ;
 int PCIE_LTSSM_STATE_MASK ;
 int PCIE_RDLH_LINK_UP ;
 int PCIE_SYS_STAT0 ;
 int PCIE_SYS_STAT4 ;
 int PCIE_XMLH_LINK_UP ;
 int histb_pcie_readl (struct histb_pcie*,int ) ;
 struct histb_pcie* to_histb_pcie (struct dw_pcie*) ;

__attribute__((used)) static int histb_pcie_link_up(struct dw_pcie *pci)
{
 struct histb_pcie *hipcie = to_histb_pcie(pci);
 u32 regval;
 u32 status;

 regval = histb_pcie_readl(hipcie, PCIE_SYS_STAT0);
 status = histb_pcie_readl(hipcie, PCIE_SYS_STAT4);
 status &= PCIE_LTSSM_STATE_MASK;
 if ((regval & PCIE_XMLH_LINK_UP) && (regval & PCIE_RDLH_LINK_UP) &&
     (status == PCIE_LTSSM_STATE_ACTIVE))
  return 1;

 return 0;
}
