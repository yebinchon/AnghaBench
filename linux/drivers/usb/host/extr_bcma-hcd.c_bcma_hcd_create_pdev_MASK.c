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
typedef  scalar_t__ u32 ;
struct resource {int /*<<< orphan*/  flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_2__ {int /*<<< orphan*/  coherent_dma_mask; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/ * parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bcma_device {int /*<<< orphan*/  dev; scalar_t__ irq; } ;
typedef  int /*<<< orphan*/  hci_res ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 int ENOMEM ; 
 struct platform_device* FUNC1 (int) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct platform_device*) ; 
 int FUNC4 (struct platform_device*,void const*,size_t) ; 
 int FUNC5 (struct platform_device*,struct resource*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC6 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 

__attribute__((used)) static struct platform_device *FUNC8(struct bcma_device *dev,
						    const char *name, u32 addr,
						    const void *data,
						    size_t size)
{
	struct platform_device *hci_dev;
	struct resource hci_res[2];
	int ret;

	FUNC2(hci_res, 0, sizeof(hci_res));

	hci_res[0].start = addr;
	hci_res[0].end = hci_res[0].start + 0x1000 - 1;
	hci_res[0].flags = IORESOURCE_MEM;

	hci_res[1].start = dev->irq;
	hci_res[1].flags = IORESOURCE_IRQ;

	hci_dev = FUNC6(name, 0);
	if (!hci_dev)
		return FUNC1(-ENOMEM);

	hci_dev->dev.parent = &dev->dev;
	hci_dev->dev.dma_mask = &hci_dev->dev.coherent_dma_mask;

	ret = FUNC5(hci_dev, hci_res,
					    FUNC0(hci_res));
	if (ret)
		goto err_alloc;
	if (data)
		ret = FUNC4(hci_dev, data, size);
	if (ret)
		goto err_alloc;
	ret = FUNC3(hci_dev);
	if (ret)
		goto err_alloc;

	return hci_dev;

err_alloc:
	FUNC7(hci_dev);
	return FUNC1(ret);
}