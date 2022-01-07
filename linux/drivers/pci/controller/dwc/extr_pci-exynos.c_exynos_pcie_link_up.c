
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct exynos_pcie {TYPE_1__* mem_res; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int elbi_base; } ;


 scalar_t__ PCIE_ELBI_LTSSM_ENABLE ;
 int PCIE_ELBI_RDLH_LINKUP ;
 scalar_t__ exynos_pcie_readl (int ,int ) ;
 struct exynos_pcie* to_exynos_pcie (struct dw_pcie*) ;

__attribute__((used)) static int exynos_pcie_link_up(struct dw_pcie *pci)
{
 struct exynos_pcie *ep = to_exynos_pcie(pci);
 u32 val;

 val = exynos_pcie_readl(ep->mem_res->elbi_base, PCIE_ELBI_RDLH_LINKUP);
 if (val == PCIE_ELBI_LTSSM_ENABLE)
  return 1;

 return 0;
}
