#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ speed; } ;
struct usba_udc {int /*<<< orphan*/  lock; TYPE_1__ gadget; } ;
struct TYPE_4__ {int /*<<< orphan*/ * desc; int /*<<< orphan*/  name; } ;
struct usba_ep {int index; scalar_t__ can_dma; int /*<<< orphan*/  queue; TYPE_2__ ep; struct usba_udc* udc; } ;
struct usb_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS ; 
 int /*<<< orphan*/  CONTROL ; 
 int /*<<< orphan*/  CTL_DIS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_ERR ; 
 int /*<<< orphan*/  DBG_GADGET ; 
 int EINVAL ; 
 int /*<<< orphan*/  EPT_INT ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USBA_EPT_ENABLE ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req_list ; 
 int /*<<< orphan*/  FUNC4 (struct usba_ep*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct usba_ep* FUNC7 (struct usb_ep*) ; 
 int /*<<< orphan*/  FUNC8 (struct usba_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usba_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usba_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usba_udc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_ep *_ep)
{
	struct usba_ep *ep = FUNC7(_ep);
	struct usba_udc *udc = ep->udc;
	FUNC1(req_list);
	unsigned long flags;

	FUNC0(DBG_GADGET, "ep_disable: %s\n", ep->ep.name);

	FUNC5(&udc->lock, flags);

	if (!ep->ep.desc) {
		FUNC6(&udc->lock, flags);
		/* REVISIT because this driver disables endpoints in
		 * reset_all_endpoints() before calling disconnect(),
		 * most gadget drivers would trigger this non-error ...
		 */
		if (udc->gadget.speed != USB_SPEED_UNKNOWN)
			FUNC0(DBG_ERR, "ep_disable: %s not enabled\n",
					ep->ep.name);
		return -EINVAL;
	}
	ep->ep.desc = NULL;

	FUNC3(&ep->queue, &req_list);
	if (ep->can_dma) {
		FUNC9(ep, CONTROL, 0);
		FUNC9(ep, ADDRESS, 0);
		FUNC8(ep, STATUS);
	}
	FUNC10(ep, CTL_DIS, USBA_EPT_ENABLE);
	FUNC11(udc, FUNC2(EPT_INT, 1 << ep->index));

	FUNC4(ep, &req_list, -ESHUTDOWN);

	FUNC6(&udc->lock, flags);

	return 0;
}