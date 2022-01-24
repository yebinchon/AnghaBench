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
struct ti_pipe3 {scalar_t__ mode; int /*<<< orphan*/  pll_ctrl_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ PIPE3_MODE_PCIE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct resource*) ; 
 struct resource* FUNC2 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct ti_pipe3 *phy)
{
	struct resource *res;
	struct device *dev = phy->dev;
	struct platform_device *pdev = FUNC3(dev);

	if (phy->mode == PIPE3_MODE_PCIE)
		return 0;

	res = FUNC2(pdev, IORESOURCE_MEM,
					   "pll_ctrl");
	phy->pll_ctrl_base = FUNC1(dev, res);
	return FUNC0(phy->pll_ctrl_base);
}