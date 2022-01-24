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
struct exynos_pcie {TYPE_1__* clk_res; struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; int /*<<< orphan*/  bus_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 

__attribute__((used)) static int FUNC3(struct exynos_pcie *ep)
{
	struct dw_pcie *pci = ep->pci;
	struct device *dev = pci->dev;
	int ret;

	ret = FUNC1(ep->clk_res->clk);
	if (ret) {
		FUNC2(dev, "cannot enable pcie rc clock");
		return ret;
	}

	ret = FUNC1(ep->clk_res->bus_clk);
	if (ret) {
		FUNC2(dev, "cannot enable pcie bus clock");
		goto err_bus_clk;
	}

	return 0;

err_bus_clk:
	FUNC0(ep->clk_res->clk);

	return ret;
}