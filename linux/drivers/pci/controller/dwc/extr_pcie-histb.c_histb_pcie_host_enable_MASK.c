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
struct pcie_port {int dummy; } ;
struct histb_pcie {scalar_t__ vpcie; int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  sys_clk; int /*<<< orphan*/  pipe_clk; int /*<<< orphan*/  bus_reset; int /*<<< orphan*/  sys_reset; int /*<<< orphan*/  soft_reset; int /*<<< orphan*/  aux_clk; int /*<<< orphan*/  reset_gpio; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct dw_pcie* FUNC9 (struct pcie_port*) ; 
 struct histb_pcie* FUNC10 (struct dw_pcie*) ; 

__attribute__((used)) static int FUNC11(struct pcie_port *pp)
{
	struct dw_pcie *pci = FUNC9(pp);
	struct histb_pcie *hipcie = FUNC10(pci);
	struct device *dev = pci->dev;
	int ret;

	/* power on PCIe device if have */
	if (hipcie->vpcie) {
		ret = FUNC6(hipcie->vpcie);
		if (ret) {
			FUNC2(dev, "failed to enable regulator: %d\n", ret);
			return ret;
		}
	}

	if (FUNC3(hipcie->reset_gpio))
		FUNC4(hipcie->reset_gpio, 1);

	ret = FUNC1(hipcie->bus_clk);
	if (ret) {
		FUNC2(dev, "cannot prepare/enable bus clk\n");
		goto err_bus_clk;
	}

	ret = FUNC1(hipcie->sys_clk);
	if (ret) {
		FUNC2(dev, "cannot prepare/enable sys clk\n");
		goto err_sys_clk;
	}

	ret = FUNC1(hipcie->pipe_clk);
	if (ret) {
		FUNC2(dev, "cannot prepare/enable pipe clk\n");
		goto err_pipe_clk;
	}

	ret = FUNC1(hipcie->aux_clk);
	if (ret) {
		FUNC2(dev, "cannot prepare/enable aux clk\n");
		goto err_aux_clk;
	}

	FUNC7(hipcie->soft_reset);
	FUNC8(hipcie->soft_reset);

	FUNC7(hipcie->sys_reset);
	FUNC8(hipcie->sys_reset);

	FUNC7(hipcie->bus_reset);
	FUNC8(hipcie->bus_reset);

	return 0;

err_aux_clk:
	FUNC0(hipcie->pipe_clk);
err_pipe_clk:
	FUNC0(hipcie->sys_clk);
err_sys_clk:
	FUNC0(hipcie->bus_clk);
err_bus_clk:
	if (hipcie->vpcie)
		FUNC5(hipcie->vpcie);

	return ret;
}