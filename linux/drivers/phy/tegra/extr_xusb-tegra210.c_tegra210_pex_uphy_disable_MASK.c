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
struct tegra_xusb_pcie_pad {scalar_t__ enable; int /*<<< orphan*/  pll; int /*<<< orphan*/  rst; } ;
struct tegra_xusb_padctl {int /*<<< orphan*/  lock; int /*<<< orphan*/  pcie; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct tegra_xusb_pcie_pad* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tegra_xusb_padctl *padctl)
{
	struct tegra_xusb_pcie_pad *pcie = FUNC5(padctl->pcie);

	FUNC2(&padctl->lock);

	if (FUNC0(pcie->enable == 0))
		goto unlock;

	if (--pcie->enable > 0)
		goto unlock;

	FUNC4(pcie->rst);
	FUNC1(pcie->pll);

unlock:
	FUNC3(&padctl->lock);
}