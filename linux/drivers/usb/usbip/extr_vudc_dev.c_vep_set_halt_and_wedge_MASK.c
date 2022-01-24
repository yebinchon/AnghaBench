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
struct vudc {int /*<<< orphan*/  lock; int /*<<< orphan*/  driver; } ;
struct vep {int halted; int wedged; int /*<<< orphan*/  req_queue; TYPE_1__* desc; } ;
struct usb_ep {int dummy; } ;
struct TYPE_2__ {int bEndpointAddress; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 int USB_DIR_IN ; 
 struct vudc* FUNC0 (struct vep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vep* FUNC4 (struct usb_ep*) ; 

__attribute__((used)) static int
FUNC5(struct usb_ep *_ep, int value, int wedged)
{
	struct vep *ep;
	struct vudc *udc;
	unsigned long flags;
	int ret = 0;

	ep = FUNC4(_ep);
	if (!_ep)
		return -EINVAL;

	udc = FUNC0(ep);
	if (!udc->driver)
		return -ESHUTDOWN;

	FUNC2(&udc->lock, flags);
	if (!value)
		ep->halted = ep->wedged = 0;
	else if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
			!FUNC1(&ep->req_queue))
		ret = -EAGAIN;
	else {
		ep->halted = 1;
		if (wedged)
			ep->wedged = 1;
	}

	FUNC3(&udc->lock, flags);
	return ret;
}