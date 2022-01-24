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
struct TYPE_2__ {int /*<<< orphan*/  req; } ;
struct bcm63xx_udc {scalar_t__ ep0state; int /*<<< orphan*/  dev; scalar_t__ ep0_reply; TYPE_1__ ep0_ctrl_req; int /*<<< orphan*/  gadget; int /*<<< orphan*/ * iudma; int /*<<< orphan*/ * ep0_request; scalar_t__ ep0_req_completed; scalar_t__ ep0_req_shutdown; scalar_t__ ep0_req_set_iface; scalar_t__ ep0_req_set_cfg; scalar_t__ ep0_req_reset; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ EP0_IDLE ; 
 void* EP0_IN_FAKE_STATUS_PHASE ; 
 scalar_t__ EP0_SHUTDOWN ; 
 size_t IUDMA_EP0_RXCHAN ; 
 scalar_t__ FUNC0 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_udc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bcm63xx_udc*) ; 
 scalar_t__ FUNC3 (struct bcm63xx_udc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm63xx_udc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bcm63xx_udc *udc)
{
	if (udc->ep0_req_reset) {
		udc->ep0_req_reset = 0;
	} else if (udc->ep0_req_set_cfg) {
		udc->ep0_req_set_cfg = 0;
		if (FUNC2(udc) >= 0)
			udc->ep0state = EP0_IN_FAKE_STATUS_PHASE;
	} else if (udc->ep0_req_set_iface) {
		udc->ep0_req_set_iface = 0;
		if (FUNC3(udc) >= 0)
			udc->ep0state = EP0_IN_FAKE_STATUS_PHASE;
	} else if (udc->ep0_req_completed) {
		udc->ep0state = FUNC0(udc);
		return udc->ep0state == EP0_IDLE ? -EAGAIN : 0;
	} else if (udc->ep0_req_shutdown) {
		udc->ep0_req_shutdown = 0;
		udc->ep0_req_completed = 0;
		udc->ep0_request = NULL;
		FUNC5(udc, &udc->iudma[IUDMA_EP0_RXCHAN]);
		FUNC7(&udc->gadget,
			&udc->ep0_ctrl_req.req, 0);

		/* bcm63xx_udc_pullup() is waiting for this */
		FUNC6();
		udc->ep0state = EP0_SHUTDOWN;
	} else if (udc->ep0_reply) {
		/*
		 * This could happen if a USB RESET shows up during an ep0
		 * transaction (especially if a laggy driver like gadgetfs
		 * is in use).
		 */
		FUNC4(udc->dev, "nuking unexpected reply\n");
		FUNC1(udc, 0);
	} else {
		return -EAGAIN;
	}

	return 0;
}