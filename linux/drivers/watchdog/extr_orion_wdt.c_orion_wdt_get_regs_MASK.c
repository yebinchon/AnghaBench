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
struct resource {int start; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct orion_watchdog {void* rstout_mask; void* rstout; void* reg; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int INTERNAL_REGS_MASK ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct platform_device*,int) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 void* FUNC5 (struct platform_device*,int) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev,
			      struct orion_watchdog *dev)
{
	struct device_node *node = pdev->dev.of_node;
	struct resource *res;

	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	dev->reg = FUNC2(&pdev->dev, res->start,
				FUNC7(res));
	if (!dev->reg)
		return -ENOMEM;

	/* Each supported compatible has some RSTOUT register quirk */
	if (FUNC4(node, "marvell,orion-wdt")) {

		dev->rstout = FUNC5(pdev, res->start &
						       INTERNAL_REGS_MASK);
		if (!dev->rstout)
			return -ENODEV;

	} else if (FUNC4(node, "marvell,armada-370-wdt") ||
		   FUNC4(node, "marvell,armada-xp-wdt")) {

		/* Dedicated RSTOUT register, can be requested. */
		dev->rstout = FUNC3(pdev, 1);
		if (FUNC0(dev->rstout))
			return FUNC1(dev->rstout);

	} else if (FUNC4(node, "marvell,armada-375-wdt") ||
		   FUNC4(node, "marvell,armada-380-wdt")) {

		/* Dedicated RSTOUT register, can be requested. */
		dev->rstout = FUNC3(pdev, 1);
		if (FUNC0(dev->rstout))
			return FUNC1(dev->rstout);

		res = FUNC6(pdev, IORESOURCE_MEM, 2);
		if (!res)
			return -ENODEV;
		dev->rstout_mask = FUNC2(&pdev->dev, res->start,
						FUNC7(res));
		if (!dev->rstout_mask)
			return -ENOMEM;

	} else {
		return -ENODEV;
	}

	return 0;
}