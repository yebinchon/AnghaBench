#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct tegra_pcie_dw {scalar_t__ appl_base; int /*<<< orphan*/  pci; } ;

/* Variables and functions */
 scalar_t__ APPL_DEBUG ; 
 int APPL_DEBUG_PM_LINKST_IN_L2_LAT ; 
 int APPL_PM_XMT_TURNOFF_STATE ; 
 int /*<<< orphan*/  APPL_RADM_STATUS ; 
 int /*<<< orphan*/  PME_ACK_TIMEOUT ; 
 int FUNC0 (struct tegra_pcie_dw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_pcie_dw*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tegra_pcie_dw *pcie)
{
	u32 val;

	if (!FUNC3(&pcie->pci))
		return 0;

	val = FUNC0(pcie, APPL_RADM_STATUS);
	val |= APPL_PM_XMT_TURNOFF_STATE;
	FUNC1(pcie, val, APPL_RADM_STATUS);

	return FUNC2(pcie->appl_base + APPL_DEBUG, val,
				 val & APPL_DEBUG_PM_LINKST_IN_L2_LAT,
				 1, PME_ACK_TIMEOUT);
}