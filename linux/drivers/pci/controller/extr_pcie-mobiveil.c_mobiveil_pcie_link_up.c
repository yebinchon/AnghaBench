
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mobiveil_pcie {int dummy; } ;


 int LTSSM_STATUS ;
 int LTSSM_STATUS_L0 ;
 int LTSSM_STATUS_L0_MASK ;
 int csr_readl (struct mobiveil_pcie*,int ) ;

__attribute__((used)) static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
{
 return (csr_readl(pcie, LTSSM_STATUS) &
  LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
}
