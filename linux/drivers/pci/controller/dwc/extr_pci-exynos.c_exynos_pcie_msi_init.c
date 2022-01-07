
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pcie_port {int dummy; } ;
struct exynos_pcie {TYPE_1__* mem_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct pcie_port pp; } ;
struct TYPE_2__ {int elbi_base; } ;


 int IRQ_MSI_ENABLE ;
 int PCIE_IRQ_EN_LEVEL ;
 int dw_pcie_msi_init (struct pcie_port*) ;
 int exynos_pcie_readl (int ,int ) ;
 int exynos_pcie_writel (int ,int ,int ) ;

__attribute__((used)) static void exynos_pcie_msi_init(struct exynos_pcie *ep)
{
 struct dw_pcie *pci = ep->pci;
 struct pcie_port *pp = &pci->pp;
 u32 val;

 dw_pcie_msi_init(pp);


 val = exynos_pcie_readl(ep->mem_res->elbi_base, PCIE_IRQ_EN_LEVEL);
 val |= IRQ_MSI_ENABLE;
 exynos_pcie_writel(ep->mem_res->elbi_base, val, PCIE_IRQ_EN_LEVEL);
}
