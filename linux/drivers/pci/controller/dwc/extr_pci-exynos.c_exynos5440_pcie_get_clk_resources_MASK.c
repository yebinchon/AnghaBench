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
struct TYPE_2__ {void* bus_clk; void* clk; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 
 TYPE_1__* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct exynos_pcie *ep)
{
	struct dw_pcie *pci = ep->pci;
	struct device *dev = pci->dev;

	ep->clk_res = FUNC4(dev, sizeof(*ep->clk_res), GFP_KERNEL);
	if (!ep->clk_res)
		return -ENOMEM;

	ep->clk_res->clk = FUNC3(dev, "pcie");
	if (FUNC0(ep->clk_res->clk)) {
		FUNC2(dev, "Failed to get pcie rc clock\n");
		return FUNC1(ep->clk_res->clk);
	}

	ep->clk_res->bus_clk = FUNC3(dev, "pcie_bus");
	if (FUNC0(ep->clk_res->bus_clk)) {
		FUNC2(dev, "Failed to get pcie bus clock\n");
		return FUNC1(ep->clk_res->bus_clk);
	}

	return 0;
}