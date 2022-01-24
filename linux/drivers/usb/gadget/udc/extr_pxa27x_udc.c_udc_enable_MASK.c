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
struct TYPE_2__ {int /*<<< orphan*/  speed; } ;
struct pxa_udc {int enabled; int /*<<< orphan*/ * pxa_ep; int /*<<< orphan*/  dev; int /*<<< orphan*/  stats; TYPE_1__ gadget; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_EMCE ; 
 int /*<<< orphan*/  UDCCR_UDE ; 
 int /*<<< orphan*/  UDCCSR0_ACM ; 
 int /*<<< orphan*/  UDCICR0 ; 
 int /*<<< orphan*/  UDCICR1 ; 
 int UDCICR1_IECC ; 
 int UDCICR1_IERS ; 
 int UDCICR1_IERU ; 
 int UDCICR1_IESU ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pxa_udc*) ; 
 int /*<<< orphan*/  FUNC8 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pxa_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pxa_udc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(struct pxa_udc *udc)
{
	if (udc->enabled)
		return;

	FUNC0(udc->clk);
	FUNC11(udc, UDCICR0, 0);
	FUNC11(udc, UDCICR1, 0);
	FUNC8(udc, UDCCR_UDE);

	FUNC2(udc);
	udc->gadget.speed = USB_SPEED_FULL;
	FUNC4(&udc->stats, 0, sizeof(udc->stats));

	FUNC7(udc);
	FUNC10(udc, UDCCR_UDE);
	FUNC3(&udc->pxa_ep[0], UDCCSR0_ACM);
	FUNC12(2);
	if (FUNC9(udc, UDCCR) & UDCCR_EMCE)
		FUNC1(udc->dev, "Configuration errors, udc disabled\n");

	/*
	 * Caller must be able to sleep in order to cope with startup transients
	 */
	FUNC5(100);

	/* enable suspend/resume and reset irqs */
	FUNC11(udc, UDCICR1,
			UDCICR1_IECC | UDCICR1_IERU
			| UDCICR1_IESU | UDCICR1_IERS);

	/* enable ep0 irqs */
	FUNC6(&udc->pxa_ep[0]);

	udc->enabled = 1;
}