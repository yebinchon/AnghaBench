
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct imx6_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int CONFIG_PCI_MSI ;
 scalar_t__ IS_ENABLED (int ) ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int imx6_pcie_assert_core_reset (struct imx6_pcie*) ;
 int imx6_pcie_deassert_core_reset (struct imx6_pcie*) ;
 int imx6_pcie_establish_link (struct imx6_pcie*) ;
 int imx6_pcie_init_phy (struct imx6_pcie*) ;
 int imx6_setup_phy_mpll (struct imx6_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct imx6_pcie* to_imx6_pcie (struct dw_pcie*) ;

__attribute__((used)) static int imx6_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct imx6_pcie *imx6_pcie = to_imx6_pcie(pci);

 imx6_pcie_assert_core_reset(imx6_pcie);
 imx6_pcie_init_phy(imx6_pcie);
 imx6_pcie_deassert_core_reset(imx6_pcie);
 imx6_setup_phy_mpll(imx6_pcie);
 dw_pcie_setup_rc(pp);
 imx6_pcie_establish_link(imx6_pcie);

 if (IS_ENABLED(CONFIG_PCI_MSI))
  dw_pcie_msi_init(pp);

 return 0;
}
