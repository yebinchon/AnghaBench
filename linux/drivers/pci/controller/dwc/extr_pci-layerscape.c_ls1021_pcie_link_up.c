
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ls_pcie {int index; int scfg; } ;
struct dw_pcie {int dummy; } ;


 int LTSSM_PCIE_L0 ;
 int LTSSM_STATE_MASK ;
 int LTSSM_STATE_SHIFT ;
 int SCFG_PEXMSCPORTSR (int ) ;
 int regmap_read (int ,int ,int*) ;
 struct ls_pcie* to_ls_pcie (struct dw_pcie*) ;

__attribute__((used)) static int ls1021_pcie_link_up(struct dw_pcie *pci)
{
 u32 state;
 struct ls_pcie *pcie = to_ls_pcie(pci);

 if (!pcie->scfg)
  return 0;

 regmap_read(pcie->scfg, SCFG_PEXMSCPORTSR(pcie->index), &state);
 state = (state >> LTSSM_STATE_SHIFT) & LTSSM_STATE_MASK;

 if (state < LTSSM_PCIE_L0)
  return 0;

 return 1;
}
