
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct artpec6_pcie {int variant; } ;




 int artpec6_pcie_wait_for_phy_a6 (struct artpec6_pcie*) ;
 int artpec6_pcie_wait_for_phy_a7 (struct artpec6_pcie*) ;

__attribute__((used)) static void artpec6_pcie_wait_for_phy(struct artpec6_pcie *artpec6_pcie)
{
 switch (artpec6_pcie->variant) {
 case 129:
  artpec6_pcie_wait_for_phy_a6(artpec6_pcie);
  break;
 case 128:
  artpec6_pcie_wait_for_phy_a7(artpec6_pcie);
  break;
 }
}
