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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct xusb_udc {int /*<<< orphan*/  lock; scalar_t__ remote_wkp; int /*<<< orphan*/  addr; int /*<<< orphan*/  (* write_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * driver; TYPE_1__ gadget; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  XUSB_ADDRESS_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xusb_udc* FUNC3 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC4 (struct xusb_udc*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget)
{
	struct xusb_udc *udc = FUNC3(gadget);
	unsigned long flags;

	FUNC0(&udc->lock, flags);

	udc->gadget.speed = USB_SPEED_UNKNOWN;
	udc->driver = NULL;

	/* Set device address and remote wakeup to 0 */
	udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);
	udc->remote_wkp = 0;

	FUNC4(udc);

	FUNC1(&udc->lock, flags);

	return 0;
}