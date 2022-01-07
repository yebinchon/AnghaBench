
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear13xx_pcie {struct pcie_app_reg* app_base; } ;
struct pcie_app_reg {int app_status_1; } ;
struct dw_pcie {int dummy; } ;


 int XMLH_LINK_UP ;
 int readl (int *) ;
 struct spear13xx_pcie* to_spear13xx_pcie (struct dw_pcie*) ;

__attribute__((used)) static int spear13xx_pcie_link_up(struct dw_pcie *pci)
{
 struct spear13xx_pcie *spear13xx_pcie = to_spear13xx_pcie(pci);
 struct pcie_app_reg *app_reg = spear13xx_pcie->app_base;

 if (readl(&app_reg->app_status_1) & XMLH_LINK_UP)
  return 1;

 return 0;
}
