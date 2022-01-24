#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  speed; } ;
struct xusb_udc {int (* read_fn ) (scalar_t__) ;scalar_t__ usb_state; int /*<<< orphan*/  lock; TYPE_2__ gadget; TYPE_1__* driver; scalar_t__ addr; int /*<<< orphan*/  (* write_fn ) (scalar_t__,scalar_t__,int) ;int /*<<< orphan*/  dev; scalar_t__ remote_wkp; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* disconnect ) (TYPE_2__*) ;int /*<<< orphan*/  (* resume ) (TYPE_2__*) ;int /*<<< orphan*/  (* suspend ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 scalar_t__ USB_STATE_SUSPENDED ; 
 scalar_t__ XUSB_ADDRESS_OFFSET ; 
 scalar_t__ XUSB_IER_OFFSET ; 
 int XUSB_STATUS_DISCONNECT_MASK ; 
 int XUSB_STATUS_HIGH_SPEED_MASK ; 
 int XUSB_STATUS_RESET_MASK ; 
 int XUSB_STATUS_RESUME_MASK ; 
 int XUSB_STATUS_SUSPEND_MASK ; 
 scalar_t__ XUSB_TESTMODE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__,int) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (struct xusb_udc*) ; 
 int /*<<< orphan*/  FUNC18 (struct xusb_udc*) ; 

__attribute__((used)) static void FUNC19(struct xusb_udc *udc, u32 intrstatus)
{
	u32 intrreg;

	if (intrstatus & XUSB_STATUS_RESET_MASK) {

		FUNC1(udc->dev, "Reset\n");

		if (intrstatus & XUSB_STATUS_HIGH_SPEED_MASK)
			udc->gadget.speed = USB_SPEED_HIGH;
		else
			udc->gadget.speed = USB_SPEED_FULL;

		FUNC18(udc);
		FUNC17(udc);
		udc->write_fn(udc->addr, XUSB_TESTMODE_OFFSET, 0);

		/* Set device address and remote wakeup to 0 */
		udc->write_fn(udc->addr, XUSB_ADDRESS_OFFSET, 0);
		udc->remote_wkp = 0;

		/* Enable the suspend, resume and disconnect */
		intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
		intrreg |= XUSB_STATUS_SUSPEND_MASK | XUSB_STATUS_RESUME_MASK |
			   XUSB_STATUS_DISCONNECT_MASK;
		udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);
	}
	if (intrstatus & XUSB_STATUS_SUSPEND_MASK) {

		FUNC1(udc->dev, "Suspend\n");

		/* Enable the reset, resume and disconnect */
		intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
		intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_RESUME_MASK |
			   XUSB_STATUS_DISCONNECT_MASK;
		udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

		udc->usb_state = USB_STATE_SUSPENDED;

		if (udc->driver->suspend) {
			FUNC3(&udc->lock);
			udc->driver->suspend(&udc->gadget);
			FUNC2(&udc->lock);
		}
	}
	if (intrstatus & XUSB_STATUS_RESUME_MASK) {
		bool condition = (udc->usb_state != USB_STATE_SUSPENDED);

		FUNC0(udc->dev, condition,
				"Resume IRQ while not suspended\n");

		FUNC1(udc->dev, "Resume\n");

		/* Enable the reset, suspend and disconnect */
		intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
		intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_SUSPEND_MASK |
			   XUSB_STATUS_DISCONNECT_MASK;
		udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

		udc->usb_state = 0;

		if (udc->driver->resume) {
			FUNC3(&udc->lock);
			udc->driver->resume(&udc->gadget);
			FUNC2(&udc->lock);
		}
	}
	if (intrstatus & XUSB_STATUS_DISCONNECT_MASK) {

		FUNC1(udc->dev, "Disconnect\n");

		/* Enable the reset, resume and suspend */
		intrreg = udc->read_fn(udc->addr + XUSB_IER_OFFSET);
		intrreg |= XUSB_STATUS_RESET_MASK | XUSB_STATUS_RESUME_MASK |
			   XUSB_STATUS_SUSPEND_MASK;
		udc->write_fn(udc->addr, XUSB_IER_OFFSET, intrreg);

		if (udc->driver && udc->driver->disconnect) {
			FUNC3(&udc->lock);
			udc->driver->disconnect(&udc->gadget);
			FUNC2(&udc->lock);
		}
	}
}