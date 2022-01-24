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
struct usb_gadget {int dummy; } ;
struct lpc32xx_udc {int /*<<< orphan*/  lock; int /*<<< orphan*/  enabled_ep_cnt; int /*<<< orphan*/  ep_disable_wait_queue; scalar_t__ driver; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct lpc32xx_udc*) ; 
 struct lpc32xx_udc* FUNC5 (struct usb_gadget*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpc32xx_udc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpc32xx_udc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct usb_gadget *gadget, int is_active)
{
	unsigned long flags;
	struct lpc32xx_udc *udc = FUNC5(gadget);

	FUNC2(&udc->lock, flags);

	/* Doesn't need lock */
	if (udc->driver) {
		FUNC6(udc, 1);
		FUNC7(udc);
		FUNC1(udc, is_active);
	} else {
		FUNC4(udc);
		FUNC1(udc, 0);

		FUNC3(&udc->lock, flags);
		/*
		 *  Wait for all the endpoints to disable,
		 *  before disabling clocks. Don't wait if
		 *  endpoints are not enabled.
		 */
		if (FUNC0(&udc->enabled_ep_cnt))
			FUNC8(udc->ep_disable_wait_queue,
				 (FUNC0(&udc->enabled_ep_cnt) == 0));

		FUNC2(&udc->lock, flags);

		FUNC6(udc, 0);
	}

	FUNC3(&udc->lock, flags);

	return 0;
}