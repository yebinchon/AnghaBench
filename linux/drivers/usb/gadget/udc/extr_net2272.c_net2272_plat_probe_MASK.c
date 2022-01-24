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
struct resource {int flags; int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct net2272 {int /*<<< orphan*/  base_addr; int /*<<< orphan*/  dev; int /*<<< orphan*/  base_shift; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int BYTE_SWAP ; 
 int EBUSY ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  IORESOURCE_BUS ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int IORESOURCE_IRQ_HIGHEDGE ; 
 int IORESOURCE_IRQ_HIGHLEVEL ; 
 int IORESOURCE_IRQ_LOWEDGE ; 
 int IORESOURCE_IRQ_LOWLEVEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 unsigned int IRQF_TRIGGER_FALLING ; 
 unsigned int IRQF_TRIGGER_HIGH ; 
 unsigned int IRQF_TRIGGER_LOW ; 
 unsigned int IRQF_TRIGGER_RISING ; 
 scalar_t__ FUNC0 (struct net2272*) ; 
 int /*<<< orphan*/  LOCCTL ; 
 int FUNC1 (struct net2272*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  driver_name ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net2272*,unsigned int) ; 
 struct net2272* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct net2272*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct net2272*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 

__attribute__((used)) static int
FUNC15(struct platform_device *pdev)
{
	struct net2272 *dev;
	int ret;
	unsigned int irqflags;
	resource_size_t base, len;
	struct resource *iomem, *iomem_bus, *irq_res;

	irq_res = FUNC10(pdev, IORESOURCE_IRQ, 0);
	iomem = FUNC10(pdev, IORESOURCE_MEM, 0);
	iomem_bus = FUNC10(pdev, IORESOURCE_BUS, 0);
	if (!irq_res || !iomem) {
		FUNC3(&pdev->dev, "must provide irq/base addr");
		return -EINVAL;
	}

	dev = FUNC8(&pdev->dev, irq_res->start);
	if (FUNC0(dev))
		return FUNC1(dev);

	irqflags = 0;
	if (irq_res->flags & IORESOURCE_IRQ_HIGHEDGE)
		irqflags |= IRQF_TRIGGER_RISING;
	if (irq_res->flags & IORESOURCE_IRQ_LOWEDGE)
		irqflags |= IRQF_TRIGGER_FALLING;
	if (irq_res->flags & IORESOURCE_IRQ_HIGHLEVEL)
		irqflags |= IRQF_TRIGGER_HIGH;
	if (irq_res->flags & IORESOURCE_IRQ_LOWLEVEL)
		irqflags |= IRQF_TRIGGER_LOW;

	base = iomem->start;
	len = FUNC14(iomem);
	if (iomem_bus)
		dev->base_shift = iomem_bus->start;

	if (!FUNC13(base, len, driver_name)) {
		FUNC2(dev->dev, "get request memory region!\n");
		ret = -EBUSY;
		goto err;
	}
	dev->base_addr = FUNC5(base, len);
	if (!dev->base_addr) {
		FUNC2(dev->dev, "can't map memory\n");
		ret = -EFAULT;
		goto err_req;
	}

	ret = FUNC7(dev, IRQF_TRIGGER_LOW);
	if (ret)
		goto err_io;

	FUNC11(pdev, dev);
	FUNC4(&pdev->dev, "running in 16-bit, %sbyte swap local bus mode\n",
		(FUNC9(dev, LOCCTL) & (1 << BYTE_SWAP)) ? "" : "no ");

	return 0;

 err_io:
	FUNC6(dev->base_addr);
 err_req:
	FUNC12(base, len);
 err:
	return ret;
}