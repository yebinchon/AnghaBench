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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct bcm63xx_usbd_platform_data {int /*<<< orphan*/  use_fullspeed; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_speed; int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; } ;
struct bcm63xx_udc {TYPE_1__ gadget; struct bcm63xx_udc* iudma; int /*<<< orphan*/  ep0_wq; int /*<<< orphan*/  lock; void* iudma_regs; void* usbd_regs; struct bcm63xx_usbd_platform_data* pd; struct device* dev; } ;

/* Variables and functions */
 int BCM63XX_NUM_IUDMA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  bcm63xx_ep0_process ; 
 int FUNC3 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  bcm63xx_udc_ctrl_isr ; 
 int /*<<< orphan*/  bcm63xx_udc_data_isr ; 
 int /*<<< orphan*/  FUNC5 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  bcm63xx_udc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 struct bcm63xx_usbd_platform_data* FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 void* FUNC10 (struct device*,struct resource*) ; 
 struct bcm63xx_udc* FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm63xx_udc*) ; 
 int FUNC13 (struct platform_device*,int) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  use_fullspeed ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct bcm63xx_usbd_platform_data *pd = FUNC8(dev);
	struct bcm63xx_udc *udc;
	struct resource *res;
	int rc = -ENOMEM, i, irq;

	udc = FUNC11(dev, sizeof(*udc), GFP_KERNEL);
	if (!udc)
		return -ENOMEM;

	FUNC15(pdev, udc);
	udc->dev = dev;
	udc->pd = pd;

	if (!pd) {
		FUNC7(dev, "missing platform data\n");
		return -EINVAL;
	}

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	udc->usbd_regs = FUNC10(dev, res);
	if (FUNC1(udc->usbd_regs))
		return FUNC2(udc->usbd_regs);

	res = FUNC14(pdev, IORESOURCE_MEM, 1);
	udc->iudma_regs = FUNC10(dev, res);
	if (FUNC1(udc->iudma_regs))
		return FUNC2(udc->iudma_regs);

	FUNC16(&udc->lock);
	FUNC0(&udc->ep0_wq, bcm63xx_ep0_process);

	udc->gadget.ops = &bcm63xx_udc_ops;
	udc->gadget.name = FUNC9(dev);

	if (!pd->use_fullspeed && !use_fullspeed)
		udc->gadget.max_speed = USB_SPEED_HIGH;
	else
		udc->gadget.max_speed = USB_SPEED_FULL;

	/* request clocks, allocate buffers, and clear any pending IRQs */
	rc = FUNC3(udc);
	if (rc)
		return rc;

	rc = -ENXIO;

	/* IRQ resource #0: control interrupt (VBUS, speed, etc.) */
	irq = FUNC13(pdev, 0);
	if (irq < 0)
		goto out_uninit;
	if (FUNC12(dev, irq, &bcm63xx_udc_ctrl_isr, 0,
			     FUNC9(dev), udc) < 0)
		goto report_request_failure;

	/* IRQ resources #1-6: data interrupts for IUDMA channels 0-5 */
	for (i = 0; i < BCM63XX_NUM_IUDMA; i++) {
		irq = FUNC13(pdev, i + 1);
		if (irq < 0)
			goto out_uninit;
		if (FUNC12(dev, irq, &bcm63xx_udc_data_isr, 0,
				     FUNC9(dev), &udc->iudma[i]) < 0)
			goto report_request_failure;
	}

	FUNC5(udc);
	rc = FUNC17(dev, &udc->gadget);
	if (!rc)
		return 0;

	FUNC4(udc);
out_uninit:
	FUNC6(udc);
	return rc;

report_request_failure:
	FUNC7(dev, "error requesting IRQ #%d\n", irq);
	goto out_uninit;
}