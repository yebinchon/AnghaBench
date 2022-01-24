#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int name; } ;
struct usb_gadget_driver {TYPE_2__ driver; } ;
struct usb_gadget {int dummy; } ;
struct TYPE_3__ {int name; } ;
struct dwc3 {int irq_gadget; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; struct usb_gadget_driver* gadget_driver; TYPE_1__ gadget; int /*<<< orphan*/  ev_buf; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  dwc3_interrupt ; 
 int /*<<< orphan*/  dwc3_thread_interrupt ; 
 int /*<<< orphan*/  FUNC2 (int,struct dwc3*) ; 
 struct dwc3* FUNC3 (struct usb_gadget*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct usb_gadget *g,
		struct usb_gadget_driver *driver)
{
	struct dwc3		*dwc = FUNC3(g);
	unsigned long		flags;
	int			ret = 0;
	int			irq;

	irq = dwc->irq_gadget;
	ret = FUNC5(irq, dwc3_interrupt, dwc3_thread_interrupt,
			IRQF_SHARED, "dwc3", dwc->ev_buf);
	if (ret) {
		FUNC1(dwc->dev, "failed to request irq #%d --> %d\n",
				irq, ret);
		goto err0;
	}

	FUNC6(&dwc->lock, flags);
	if (dwc->gadget_driver) {
		FUNC1(dwc->dev, "%s is already bound to %s\n",
				dwc->gadget.name,
				dwc->gadget_driver->driver.name);
		ret = -EBUSY;
		goto err1;
	}

	dwc->gadget_driver	= driver;

	if (FUNC4(dwc->dev))
		FUNC0(dwc);

	FUNC7(&dwc->lock, flags);

	return 0;

err1:
	FUNC7(&dwc->lock, flags);
	FUNC2(irq, dwc);

err0:
	return ret;
}