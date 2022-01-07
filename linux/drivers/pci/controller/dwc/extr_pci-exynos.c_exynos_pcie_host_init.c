
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcie_port {int dummy; } ;
struct exynos_pcie {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int exynos_pcie_enable_interrupts (struct exynos_pcie*) ;
 int exynos_pcie_establish_link (struct exynos_pcie*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct exynos_pcie* to_exynos_pcie (struct dw_pcie*) ;

__attribute__((used)) static int exynos_pcie_host_init(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct exynos_pcie *ep = to_exynos_pcie(pci);

 exynos_pcie_establish_link(ep);
 exynos_pcie_enable_interrupts(ep);

 return 0;
}
