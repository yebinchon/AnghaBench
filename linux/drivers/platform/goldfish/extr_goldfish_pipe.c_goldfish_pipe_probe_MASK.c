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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct goldfish_pipe_dev {scalar_t__ version; scalar_t__ base; int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; int /*<<< orphan*/ * magic; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ PIPE_CURRENT_DEVICE_VERSION ; 
 int /*<<< orphan*/  PIPE_DRIVER_VERSION ; 
 scalar_t__ PIPE_REG_VERSION ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct goldfish_pipe_dev* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  goldfish_pipe_device_deinit ; 
 int FUNC4 (struct platform_device*,struct goldfish_pipe_dev*) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *r;
	struct goldfish_pipe_dev *dev;

	dev = FUNC3(&pdev->dev, sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return -ENOMEM;

	dev->magic = &goldfish_pipe_device_deinit;
	FUNC8(&dev->lock);

	r = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!r || FUNC7(r) < PAGE_SIZE) {
		FUNC1(&pdev->dev, "can't allocate i/o page\n");
		return -EINVAL;
	}
	dev->base = FUNC2(&pdev->dev, r->start, PAGE_SIZE);
	if (!dev->base) {
		FUNC1(&pdev->dev, "ioremap failed\n");
		return -EINVAL;
	}

	r = FUNC5(pdev, IORESOURCE_IRQ, 0);
	if (!r)
		return -EINVAL;

	dev->irq = r->start;

	/*
	 * Exchange the versions with the host device
	 *
	 * Note: v1 driver used to not report its version, so we write it before
	 *  reading device version back: this allows the host implementation to
	 *  detect the old driver (if there was no version write before read).
	 */
	FUNC9(PIPE_DRIVER_VERSION, dev->base + PIPE_REG_VERSION);
	dev->version = FUNC6(dev->base + PIPE_REG_VERSION);
	if (FUNC0(dev->version < PIPE_CURRENT_DEVICE_VERSION))
		return -EINVAL;

	return FUNC4(pdev, dev);
}