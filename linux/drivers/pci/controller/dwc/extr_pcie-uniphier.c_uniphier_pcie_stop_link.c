
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uniphier_pcie_priv {int dummy; } ;
struct dw_pcie {int dummy; } ;


 struct uniphier_pcie_priv* to_uniphier_pcie (struct dw_pcie*) ;
 int uniphier_pcie_ltssm_enable (struct uniphier_pcie_priv*,int) ;

__attribute__((used)) static void uniphier_pcie_stop_link(struct dw_pcie *pci)
{
 struct uniphier_pcie_priv *priv = to_uniphier_pcie(pci);

 uniphier_pcie_ltssm_enable(priv, 0);
}
