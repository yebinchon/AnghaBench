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
struct ti_pipe3 {void* phy_tx; void* phy_rx; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 void* FUNC3 (struct device*,struct resource*) ; 
 struct resource* FUNC4 (struct platform_device*,int /*<<< orphan*/ ,char*) ; 
 struct platform_device* FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct ti_pipe3 *phy)
{
	struct resource *res;
	struct device *dev = phy->dev;
	struct platform_device *pdev = FUNC5(dev);

	res = FUNC4(pdev, IORESOURCE_MEM,
					   "phy_rx");
	phy->phy_rx = FUNC3(dev, res);
	if (FUNC0(phy->phy_rx))
		return FUNC1(phy->phy_rx);

	res = FUNC4(pdev, IORESOURCE_MEM,
					   "phy_tx");
	phy->phy_tx = FUNC3(dev, res);

	return FUNC2(phy->phy_tx);
}