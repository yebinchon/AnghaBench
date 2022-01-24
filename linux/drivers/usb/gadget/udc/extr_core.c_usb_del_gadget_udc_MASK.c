#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct usb_udc {TYPE_1__ dev; struct usb_gadget_driver* driver; int /*<<< orphan*/  list; } ;
struct usb_gadget_driver {int /*<<< orphan*/  pending; } ;
struct usb_gadget {TYPE_1__ dev; int /*<<< orphan*/  work; struct usb_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gadget_driver_pending_list ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  udc_lock ; 
 int /*<<< orphan*/  FUNC9 (struct usb_udc*) ; 

void FUNC10(struct usb_gadget *gadget)
{
	struct usb_udc *udc = gadget->udc;

	if (!udc)
		return;

	FUNC0(gadget->dev.parent, "unregistering gadget\n");

	FUNC7(&udc_lock);
	FUNC5(&udc->list);

	if (udc->driver) {
		struct usb_gadget_driver *driver = udc->driver;

		FUNC9(udc);
		FUNC4(&driver->pending, &gadget_driver_pending_list);
	}
	FUNC8(&udc_lock);

	FUNC3(&udc->dev.kobj, KOBJ_REMOVE);
	FUNC2(&gadget->work);
	FUNC1(&udc->dev);
	FUNC1(&gadget->dev);
	FUNC6(&gadget->dev, 0x00, sizeof(gadget->dev));
}