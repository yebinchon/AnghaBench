#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_5__ {int /*<<< orphan*/  ep_list; TYPE_1__* ep0; } ;
struct lpc32xx_udc {int /*<<< orphan*/  ep0state; TYPE_2__ gadget; struct lpc32xx_ep* ep; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; } ;
struct lpc32xx_ep {scalar_t__ req_pending; int /*<<< orphan*/  queue; int /*<<< orphan*/  maxpacket; TYPE_3__ ep; } ;
struct TYPE_4__ {int /*<<< orphan*/  ep_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t NUM_ENDPOINTS ; 
 int /*<<< orphan*/  WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct lpc32xx_udc *udc)
{
	u32 i;

	FUNC0(&udc->gadget.ep_list);
	FUNC0(&udc->gadget.ep0->ep_list);

	for (i = 0; i < NUM_ENDPOINTS; i++) {
		struct lpc32xx_ep *ep = &udc->ep[i];

		if (i != 0)
			FUNC1(&ep->ep.ep_list, &udc->gadget.ep_list);
		FUNC2(&ep->ep, ep->maxpacket);
		FUNC0(&ep->queue);
		ep->req_pending = 0;
	}

	udc->ep0state = WAIT_FOR_SETUP;
}