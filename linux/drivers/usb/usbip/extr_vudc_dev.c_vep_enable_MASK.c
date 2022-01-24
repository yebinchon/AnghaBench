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
struct vep {scalar_t__ wedged; scalar_t__ halted; int /*<<< orphan*/  type; struct usb_endpoint_descriptor const* desc; } ;
struct TYPE_2__ {scalar_t__ type_control; } ;
struct usb_ep {unsigned int maxpacket; TYPE_1__ caps; } ;
struct usb_endpoint_descriptor {scalar_t__ bDescriptorType; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESHUTDOWN ; 
 scalar_t__ USB_DT_ENDPOINT ; 
 struct vudc* FUNC0 (struct vep*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct vep* FUNC3 (struct usb_ep*) ; 
 unsigned int FUNC4 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static int FUNC6(struct usb_ep *_ep,
		const struct usb_endpoint_descriptor *desc)
{
	struct vep	*ep;
	struct vudc	*udc;
	unsigned int	maxp;
	unsigned long	flags;

	ep = FUNC3(_ep);
	udc = FUNC0(ep);

	if (!_ep || !desc || ep->desc || _ep->caps.type_control
			|| desc->bDescriptorType != USB_DT_ENDPOINT)
		return -EINVAL;

	if (!udc->driver)
		return -ESHUTDOWN;

	FUNC1(&udc->lock, flags);

	maxp = FUNC4(desc);
	_ep->maxpacket = maxp;
	ep->desc = desc;
	ep->type = FUNC5(desc);
	ep->halted = ep->wedged = 0;

	FUNC2(&udc->lock, flags);

	return 0;
}