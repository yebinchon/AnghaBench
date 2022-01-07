
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct artpec6_pcie {int variant; } ;




 int PCIECFG ;
 int PCIECFG_CORE_RESET_REQ ;
 int PCIECFG_NOC_RESET ;
 int artpec6_pcie_readl (struct artpec6_pcie*,int ) ;
 int artpec6_pcie_writel (struct artpec6_pcie*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void artpec6_pcie_deassert_core_reset(struct artpec6_pcie *artpec6_pcie)
{
 u32 val;

 val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
 switch (artpec6_pcie->variant) {
 case 129:
  val &= ~PCIECFG_CORE_RESET_REQ;
  break;
 case 128:
  val |= PCIECFG_NOC_RESET;
  break;
 }
 artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
 usleep_range(100, 200);
}
