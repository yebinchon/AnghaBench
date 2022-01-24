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
struct usb_ep {scalar_t__ name; int /*<<< orphan*/  maxpacket; struct usb_endpoint_descriptor const* desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct iudma_ch {int enabled; } ;
struct bcm63xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  wedgemap; int /*<<< orphan*/  driver; } ;
struct bcm63xx_ep {int /*<<< orphan*/  ep_num; scalar_t__ halted; int /*<<< orphan*/  queue; struct iudma_ch* iudma; struct bcm63xx_udc* udc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ESHUTDOWN ; 
 scalar_t__ bcm63xx_ep0name ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,struct bcm63xx_ep*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm63xx_udc*,struct iudma_ch*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bcm63xx_ep* FUNC5 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static int FUNC9(struct usb_ep *ep,
	const struct usb_endpoint_descriptor *desc)
{
	struct bcm63xx_ep *bep = FUNC5(ep);
	struct bcm63xx_udc *udc = bep->udc;
	struct iudma_ch *iudma = bep->iudma;
	unsigned long flags;

	if (!ep || !desc || ep->name == bcm63xx_ep0name)
		return -EINVAL;

	if (!udc->driver)
		return -ESHUTDOWN;

	FUNC6(&udc->lock, flags);
	if (iudma->enabled) {
		FUNC7(&udc->lock, flags);
		return -EINVAL;
	}

	iudma->enabled = true;
	FUNC0(!FUNC4(&bep->queue));

	FUNC3(udc, iudma);

	bep->halted = 0;
	FUNC1(udc, bep, false);
	FUNC2(bep->ep_num, &udc->wedgemap);

	ep->desc = desc;
	ep->maxpacket = FUNC8(desc);

	FUNC7(&udc->lock, flags);
	return 0;
}