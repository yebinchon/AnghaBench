
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_port {int dummy; } ;
struct exynos_pcie {int phy; TYPE_1__* mem_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; struct pcie_port pp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int elbi_base; } ;


 int ETIMEDOUT ;
 int PCIE_APP_LTSSM_ENABLE ;
 int PCIE_ELBI_LTSSM_ENABLE ;
 int PCIE_PWR_RESET ;
 int dev_err (struct device*,char*) ;
 scalar_t__ dw_pcie_link_up (struct dw_pcie*) ;
 int dw_pcie_setup_rc (struct pcie_port*) ;
 int dw_pcie_wait_for_link (struct dw_pcie*) ;
 int exynos_pcie_assert_core_reset (struct exynos_pcie*) ;
 int exynos_pcie_assert_reset (struct exynos_pcie*) ;
 int exynos_pcie_deassert_core_reset (struct exynos_pcie*) ;
 int exynos_pcie_writel (int ,int,int ) ;
 int phy_init (int ) ;
 int phy_power_off (int ) ;
 int phy_power_on (int ) ;
 int phy_reset (int ) ;

__attribute__((used)) static int exynos_pcie_establish_link(struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = pci->dev;

 if (dw_pcie_link_up(pci)) {
  dev_err(dev, "Link already up\n");
  return 0;
 }

 exynos_pcie_assert_core_reset(ep);

 phy_reset(ep->phy);

 exynos_pcie_writel(ep->mem_res->elbi_base, 1,
   PCIE_PWR_RESET);

 phy_power_on(ep->phy);
 phy_init(ep->phy);

 exynos_pcie_deassert_core_reset(ep);
 dw_pcie_setup_rc(pp);
 exynos_pcie_assert_reset(ep);


 exynos_pcie_writel(ep->mem_res->elbi_base, PCIE_ELBI_LTSSM_ENABLE,
     PCIE_APP_LTSSM_ENABLE);


 if (!dw_pcie_wait_for_link(pci))
  return 0;

 phy_power_off(ep->phy);
 return -ETIMEDOUT;
}
