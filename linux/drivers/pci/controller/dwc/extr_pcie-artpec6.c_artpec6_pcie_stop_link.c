
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dw_pcie {int dummy; } ;
struct artpec6_pcie {int dummy; } ;


 int PCIECFG ;
 int PCIECFG_LTSSM_ENABLE ;
 int artpec6_pcie_readl (struct artpec6_pcie*,int ) ;
 int artpec6_pcie_writel (struct artpec6_pcie*,int ,int ) ;
 struct artpec6_pcie* to_artpec6_pcie (struct dw_pcie*) ;

__attribute__((used)) static void artpec6_pcie_stop_link(struct dw_pcie *pci)
{
 struct artpec6_pcie *artpec6_pcie = to_artpec6_pcie(pci);
 u32 val;

 val = artpec6_pcie_readl(artpec6_pcie, PCIECFG);
 val &= ~PCIECFG_LTSSM_ENABLE;
 artpec6_pcie_writel(artpec6_pcie, PCIECFG, val);
}
