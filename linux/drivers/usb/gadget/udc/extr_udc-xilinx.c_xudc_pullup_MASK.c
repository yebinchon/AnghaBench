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
struct xusb_udc {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  (* write_fn ) (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* read_fn ) (scalar_t__) ;} ;
struct usb_gadget {int dummy; } ;

/* Variables and functions */
 scalar_t__ XUSB_CONTROL_OFFSET ; 
 int /*<<< orphan*/  XUSB_CONTROL_USB_READY_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 struct xusb_udc* FUNC4 (struct usb_gadget*) ; 

__attribute__((used)) static int FUNC5(struct usb_gadget *gadget, int is_on)
{
	struct xusb_udc *udc = FUNC4(gadget);
	unsigned long flags;
	u32 crtlreg;

	FUNC0(&udc->lock, flags);

	crtlreg = udc->read_fn(udc->addr + XUSB_CONTROL_OFFSET);
	if (is_on)
		crtlreg |= XUSB_CONTROL_USB_READY_MASK;
	else
		crtlreg &= ~XUSB_CONTROL_USB_READY_MASK;

	udc->write_fn(udc->addr, XUSB_CONTROL_OFFSET, crtlreg);

	FUNC1(&udc->lock, flags);

	return 0;
}