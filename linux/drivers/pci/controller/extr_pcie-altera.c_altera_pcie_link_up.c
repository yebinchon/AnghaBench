
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_pcie {int dummy; } ;


 int LTSSM_L0 ;
 int RP_LTSSM ;
 int RP_LTSSM_MASK ;
 int cra_readl (struct altera_pcie*,int ) ;

__attribute__((used)) static bool altera_pcie_link_up(struct altera_pcie *pcie)
{
 return !!((cra_readl(pcie, RP_LTSSM) & RP_LTSSM_MASK) == LTSSM_L0);
}
