
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ls_pcie {TYPE_1__* drvdata; scalar_t__ lut; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int ltssm_shift; scalar_t__ lut_dbg; } ;


 int LTSSM_PCIE_L0 ;
 int LTSSM_STATE_MASK ;
 int ioread32 (scalar_t__) ;
 struct ls_pcie* to_ls_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ls_pcie_link_up(struct dw_pcie *pci)
{
 struct ls_pcie *pcie = to_ls_pcie(pci);
 u32 state;

 state = (ioread32(pcie->lut + pcie->drvdata->lut_dbg) >>
   pcie->drvdata->ltssm_shift) &
   LTSSM_STATE_MASK;

 if (state < LTSSM_PCIE_L0)
  return 0;

 return 1;
}
