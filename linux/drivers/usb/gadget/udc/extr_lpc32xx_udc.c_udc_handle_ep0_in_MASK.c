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
typedef  int u32 ;
struct lpc32xx_udc {scalar_t__ ep0state; struct lpc32xx_ep* ep; } ;
struct lpc32xx_ep {int /*<<< orphan*/  totalints; } ;

/* Variables and functions */
 scalar_t__ DATA_IN ; 
 int /*<<< orphan*/  ECONNABORTED ; 
 int /*<<< orphan*/  EP_IN ; 
 int EP_SEL_F ; 
 int EP_SEL_ST ; 
 void* WAIT_FOR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct lpc32xx_ep*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpc32xx_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpc32xx_udc*) ; 

__attribute__((used)) static void FUNC4(struct lpc32xx_udc *udc)
{
	struct lpc32xx_ep *ep0 = &udc->ep[0];
	u32 epstatus;

	/* Clear EP interrupt */
	epstatus = FUNC1(udc, EP_IN);

#ifdef CONFIG_USB_GADGET_DEBUG_FILES
	ep0->totalints++;
#endif

	/* Stalled? Clear stall and reset buffers */
	if (epstatus & EP_SEL_ST) {
		FUNC2(udc, EP_IN);
		FUNC0(ep0, -ECONNABORTED);
		udc->ep0state = WAIT_FOR_SETUP;
		return;
	}

	/* Is a buffer available? */
	if (!(epstatus & EP_SEL_F)) {
		/* Handle based on current state */
		if (udc->ep0state == DATA_IN)
			FUNC3(udc);
		else {
			/* Unknown state for EP0 oe end of DATA IN phase */
			FUNC0(ep0, -ECONNABORTED);
			udc->ep0state = WAIT_FOR_SETUP;
		}
	}
}