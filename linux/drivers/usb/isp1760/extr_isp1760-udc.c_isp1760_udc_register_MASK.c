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
struct TYPE_2__ {char* name; int /*<<< orphan*/  max_speed; int /*<<< orphan*/  speed; int /*<<< orphan*/ * ops; } ;
struct isp1760_udc {int irq; int /*<<< orphan*/  irqname; TYPE_1__ gadget; int /*<<< orphan*/  vbus_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; struct isp1760_device* isp; } ;
struct isp1760_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs; struct isp1760_udc udc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long IRQF_SHARED ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct isp1760_udc*) ; 
 int FUNC2 (struct isp1760_udc*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1760_udc*) ; 
 int /*<<< orphan*/  isp1760_udc_irq ; 
 int /*<<< orphan*/  isp1760_udc_ops ; 
 int /*<<< orphan*/  isp1760_udc_vbus_poll ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,struct isp1760_udc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

int FUNC10(struct isp1760_device *isp, int irq,
			 unsigned long irqflags)
{
	struct isp1760_udc *udc = &isp->udc;
	int ret;

	udc->irq = -1;
	udc->isp = isp;
	udc->regs = isp->regs;

	FUNC7(&udc->lock);
	FUNC8(&udc->vbus_timer, isp1760_udc_vbus_poll, 0);

	ret = FUNC2(udc);
	if (ret < 0)
		return ret;

	udc->irqname = FUNC4(GFP_KERNEL, "%s (udc)", FUNC0(isp->dev));
	if (!udc->irqname)
		return -ENOMEM;

	ret = FUNC6(irq, isp1760_udc_irq, IRQF_SHARED | irqflags,
			  udc->irqname, udc);
	if (ret < 0)
		goto error;

	udc->irq = irq;

	/*
	 * Initialize the gadget static fields and register its device. Gadget
	 * fields that vary during the life time of the gadget are initialized
	 * by the UDC core.
	 */
	udc->gadget.ops = &isp1760_udc_ops;
	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->gadget.max_speed = USB_SPEED_HIGH;
	udc->gadget.name = "isp1761_udc";

	FUNC3(udc);

	ret = FUNC9(isp->dev, &udc->gadget);
	if (ret < 0)
		goto error;

	return 0;

error:
	if (udc->irq >= 0)
		FUNC1(udc->irq, udc);
	FUNC5(udc->irqname);

	return ret;
}