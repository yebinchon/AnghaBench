
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct exynos_pcie {TYPE_1__* mem_res; } ;
struct TYPE_2__ {int elbi_base; } ;


 int PCIE_ELBI_SLV_ARMISC ;
 int PCIE_ELBI_SLV_DBI_ENABLE ;
 int exynos_pcie_readl (int ,int ) ;
 int exynos_pcie_writel (int ,int ,int ) ;

__attribute__((used)) static void exynos_pcie_sideband_dbi_r_mode(struct exynos_pcie *ep, bool on)
{
 u32 val;

 val = exynos_pcie_readl(ep->mem_res->elbi_base, PCIE_ELBI_SLV_ARMISC);
 if (on)
  val |= PCIE_ELBI_SLV_DBI_ENABLE;
 else
  val &= ~PCIE_ELBI_SLV_DBI_ENABLE;
 exynos_pcie_writel(ep->mem_res->elbi_base, val, PCIE_ELBI_SLV_ARMISC);
}
