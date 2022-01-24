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
struct usb_gadget_driver {scalar_t__ max_speed; int /*<<< orphan*/  function; } ;
struct usb_gadget {int dummy; } ;
struct isp1760_udc {int connected; TYPE_1__* isp; int /*<<< orphan*/  gadget; scalar_t__ devstatus; int /*<<< orphan*/  lock; struct usb_gadget_driver* driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_GLINTENA ; 
 int /*<<< orphan*/  DC_MODE ; 
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_STATE_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct isp1760_udc* FUNC2 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp1760_udc*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp1760_udc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_gadget *gadget,
			     struct usb_gadget_driver *driver)
{
	struct isp1760_udc *udc = FUNC2(gadget);
	unsigned long flags;

	/* The hardware doesn't support low speed. */
	if (driver->max_speed < USB_SPEED_FULL) {
		FUNC1(udc->isp->dev, "Invalid gadget driver\n");
		return -EINVAL;
	}

	FUNC5(&udc->lock, flags);

	if (udc->driver) {
		FUNC1(udc->isp->dev, "UDC already has a gadget driver\n");
		FUNC6(&udc->lock, flags);
		return -EBUSY;
	}

	udc->driver = driver;

	FUNC6(&udc->lock, flags);

	FUNC0(udc->isp->dev, "starting UDC with driver %s\n",
		driver->function);

	udc->devstatus = 0;
	udc->connected = true;

	FUNC7(&udc->gadget, USB_STATE_ATTACHED);

	/* DMA isn't supported yet, don't enable the DMA clock. */
	FUNC4(udc, DC_MODE, DC_GLINTENA);

	FUNC3(udc);

	FUNC0(udc->isp->dev, "UDC started with driver %s\n",
		driver->function);

	return 0;
}