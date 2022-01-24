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
struct rockchip_pcie {int /*<<< orphan*/  aclk_pcie; int /*<<< orphan*/  aclk_perf_pcie; int /*<<< orphan*/  hclk_pcie; int /*<<< orphan*/  clk_pcie_pm; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

int FUNC3(struct rockchip_pcie *rockchip)
{
	struct device *dev = rockchip->dev;
	int err;

	err = FUNC1(rockchip->aclk_pcie);
	if (err) {
		FUNC2(dev, "unable to enable aclk_pcie clock\n");
		return err;
	}

	err = FUNC1(rockchip->aclk_perf_pcie);
	if (err) {
		FUNC2(dev, "unable to enable aclk_perf_pcie clock\n");
		goto err_aclk_perf_pcie;
	}

	err = FUNC1(rockchip->hclk_pcie);
	if (err) {
		FUNC2(dev, "unable to enable hclk_pcie clock\n");
		goto err_hclk_pcie;
	}

	err = FUNC1(rockchip->clk_pcie_pm);
	if (err) {
		FUNC2(dev, "unable to enable clk_pcie_pm clock\n");
		goto err_clk_pcie_pm;
	}

	return 0;

err_clk_pcie_pm:
	FUNC0(rockchip->hclk_pcie);
err_hclk_pcie:
	FUNC0(rockchip->aclk_perf_pcie);
err_aclk_perf_pcie:
	FUNC0(rockchip->aclk_pcie);
	return err;
}