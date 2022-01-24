#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct exynos_pcie {TYPE_1__* mem_res; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  elbi_base; } ;

/* Variables and functions */
 scalar_t__ PCIE_ELBI_LTSSM_ENABLE ; 
 int /*<<< orphan*/  PCIE_ELBI_RDLH_LINKUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct exynos_pcie* FUNC1 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC2(struct dw_pcie *pci)
{
	struct exynos_pcie *ep = FUNC1(pci);
	u32 val;

	val = FUNC0(ep->mem_res->elbi_base, PCIE_ELBI_RDLH_LINKUP);
	if (val == PCIE_ELBI_LTSSM_ENABLE)
		return 1;

	return 0;
}