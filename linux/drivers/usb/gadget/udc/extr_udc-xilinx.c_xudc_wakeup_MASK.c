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
typedef  int /*<<< orphan*/  u32 ;
struct xusb_udc {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  (* write_fn ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_fn ) (scalar_t__) ;int /*<<< orphan*/  remote_wkp; } ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ XUSB_CONTROL_OFFSET ; 
 int /*<<< orphan*/  XUSB_CONTROL_USB_RMTWAKE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct xusb_udc* FUNC6 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC7(struct usb_gadget *gadget)
{
	struct xusb_udc *udc = FUNC6(gadget);
	u32 crtlreg;
	int status = -EINVAL;
	unsigned long flags;

	FUNC1(&udc->lock, flags);

	/* Remote wake up not enabled by host */
	if (!udc->remote_wkp)
		goto done;

	crtlreg = udc->read_fn(udc->addr + XUSB_CONTROL_OFFSET);
	crtlreg |= XUSB_CONTROL_USB_RMTWAKE_MASK;
	/* set remote wake up bit */
	udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);
	/*
	 * wait for a while and reset remote wake up bit since this bit
	 * is not cleared by HW after sending remote wakeup to host.
	 */
	FUNC0(2);

	crtlreg &= ~XUSB_CONTROL_USB_RMTWAKE_MASK;
	udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);
	status = 0;
done:
	FUNC2(&udc->lock, flags);
	return status;
}