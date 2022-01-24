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
struct tegra_pcie_dw {unsigned int phy_count; int /*<<< orphan*/ * phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tegra_pcie_dw *pcie)
{
	unsigned int phy_count = pcie->phy_count;

	while (phy_count--) {
		FUNC1(pcie->phys[phy_count]);
		FUNC0(pcie->phys[phy_count]);
	}
}