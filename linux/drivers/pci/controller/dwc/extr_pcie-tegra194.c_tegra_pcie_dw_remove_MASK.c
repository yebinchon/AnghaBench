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
struct tegra_pcie_dw {int /*<<< orphan*/  bpmp; int /*<<< orphan*/  dev; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  link_state; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tegra_pcie_dw* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_pcie_dw*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct tegra_pcie_dw *pcie = FUNC1(pdev);

	if (!pcie->link_state)
		return 0;

	FUNC0(pcie->debugfs);
	FUNC5(pcie);
	FUNC3(pcie->dev);
	FUNC2(pcie->dev);
	FUNC4(pcie->bpmp);

	return 0;
}