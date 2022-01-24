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
struct TYPE_2__ {int /*<<< orphan*/  pp; } ;
struct tegra_pcie_dw {int /*<<< orphan*/  msi_ctrl_int; TYPE_1__ pci; int /*<<< orphan*/  link_state; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PORT_LOGIC_MSI_CTRL_INT_0_EN ; 
 int FUNC0 (struct tegra_pcie_dw*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct tegra_pcie_dw* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tegra_pcie_dw*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct tegra_pcie_dw *pcie = FUNC2(dev);
	int ret;

	if (!pcie->link_state)
		return 0;

	ret = FUNC4(pcie, true);
	if (ret < 0)
		return ret;

	ret = FUNC5(&pcie->pci.pp);
	if (ret < 0) {
		FUNC1(dev, "Failed to init host: %d\n", ret);
		goto fail_host_init;
	}

	/* Restore MSI interrupt vector */
	FUNC3(&pcie->pci, PORT_LOGIC_MSI_CTRL_INT_0_EN,
			   pcie->msi_ctrl_int);

	return 0;

fail_host_init:
	return FUNC0(pcie);
}