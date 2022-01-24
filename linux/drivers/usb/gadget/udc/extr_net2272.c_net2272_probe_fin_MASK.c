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
struct net2272 {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  gadget; int /*<<< orphan*/  chiprev; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIPREV_2272 ; 
 int ENODEV ; 
 int /*<<< orphan*/  dev_attr_registers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  driver_desc ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  driver_vers ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net2272*) ; 
 int /*<<< orphan*/  net2272_gadget_release ; 
 int /*<<< orphan*/  net2272_irq ; 
 scalar_t__ FUNC7 (struct net2272*) ; 
 int /*<<< orphan*/  FUNC8 (struct net2272*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net2272*) ; 
 int /*<<< orphan*/  FUNC10 (struct net2272*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,struct net2272*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct net2272 *dev, unsigned int irqflags)
{
	int ret;

	/* See if there... */
	if (FUNC7(dev)) {
		FUNC2(dev->dev, "2272 not found!\n");
		ret = -ENODEV;
		goto err;
	}

	FUNC10(dev);
	FUNC9(dev);

	ret = FUNC11(dev->irq, net2272_irq, irqflags, driver_name, dev);
	if (ret) {
		FUNC0(dev->dev, "request interrupt %i failed\n", dev->irq);
		goto err;
	}

	dev->chiprev = FUNC8(dev, CHIPREV_2272);

	/* done */
	FUNC1(dev->dev, "%s\n", driver_desc);
	FUNC1(dev->dev, "irq %i, mem %p, chip rev %04x, dma %s\n",
		dev->irq, dev->base_addr, dev->chiprev,
		FUNC5());
	FUNC1(dev->dev, "version: %s\n", driver_vers);

	ret = FUNC3(dev->dev, &dev_attr_registers);
	if (ret)
		goto err_irq;

	ret = FUNC12(dev->dev, &dev->gadget,
			net2272_gadget_release);
	if (ret)
		goto err_add_udc;

	return 0;

err_add_udc:
	FUNC4(dev->dev, &dev_attr_registers);
 err_irq:
	FUNC6(dev->irq, dev);
 err:
	return ret;
}