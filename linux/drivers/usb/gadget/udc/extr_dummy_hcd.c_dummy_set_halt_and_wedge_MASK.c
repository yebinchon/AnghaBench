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
struct usb_ep {int dummy; } ;
struct dummy_ep {int halted; int wedged; int /*<<< orphan*/  queue; TYPE_1__* desc; } ;
struct dummy {int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 int USB_DIR_IN ; 
 struct dummy* FUNC0 (struct dummy_ep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct dummy_ep* FUNC2 (struct usb_ep*) ; 

__attribute__((used)) static int
FUNC3(struct usb_ep *_ep, int value, int wedged)
{
	struct dummy_ep		*ep;
	struct dummy		*dum;

	if (!_ep)
		return -EINVAL;
	ep = FUNC2(_ep);
	dum = FUNC0(ep);
	if (!dum->driver)
		return -ESHUTDOWN;
	if (!value)
		ep->halted = ep->wedged = 0;
	else if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
			!FUNC1(&ep->queue))
		return -EAGAIN;
	else {
		ep->halted = 1;
		if (wedged)
			ep->wedged = 1;
	}
	/* FIXME clear emulated data toggle too */
	return 0;
}