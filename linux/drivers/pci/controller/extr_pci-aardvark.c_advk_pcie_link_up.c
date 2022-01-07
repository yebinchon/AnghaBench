
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct advk_pcie {int dummy; } ;


 int CFG_REG ;
 int LTSSM_L0 ;
 int LTSSM_MASK ;
 int LTSSM_SHIFT ;
 int advk_readl (struct advk_pcie*,int ) ;

__attribute__((used)) static int advk_pcie_link_up(struct advk_pcie *pcie)
{
 u32 val, ltssm_state;

 val = advk_readl(pcie, CFG_REG);
 ltssm_state = (val >> LTSSM_SHIFT) & LTSSM_MASK;
 return ltssm_state >= LTSSM_L0;
}
