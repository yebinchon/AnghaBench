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
struct TYPE_4__ {scalar_t__ irqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  speed; } ;
struct pxa25x_udc {scalar_t__ has_cfr; TYPE_2__ stats; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCFR ; 
 int UDCCFR_ACM ; 
 int UDCCFR_MB1 ; 
 int /*<<< orphan*/  UDCCR ; 
 int UDCCR_REM ; 
 int UDCCR_RESIR ; 
 int UDCCR_RSTIR ; 
 int UDCCR_SRM ; 
 int UDCCR_SUSIR ; 
 int UDCCR_UDA ; 
 int UDCCR_UDE ; 
 int /*<<< orphan*/  UDC_RES1 ; 
 int /*<<< orphan*/  UDC_RES2 ; 
 int /*<<< orphan*/  UICR0 ; 
 int UICR0_IM0 ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pxa25x_udc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa25x_udc*,int) ; 
 int FUNC4 (struct pxa25x_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa25x_udc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pxa25x_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7 (struct pxa25x_udc *dev)
{
	FUNC3(dev, UDCCR_UDE);

	/* try to clear these bits before we enable the udc */
	FUNC2(dev, UDCCR_SUSIR|/*UDCCR_RSTIR|*/UDCCR_RESIR);

	FUNC0(dev);
	dev->gadget.speed = USB_SPEED_UNKNOWN;
	dev->stats.irqs = 0;

	/*
	 * sequence taken from chapter 12.5.10, PXA250 AppProcDevManual:
	 * - enable UDC
	 * - if RESET is already in progress, ack interrupt
	 * - unmask reset interrupt
	 */
	FUNC5(dev, UDCCR_UDE);
	if (!(FUNC4(dev, UDCCR) & UDCCR_UDA))
		FUNC2(dev, UDCCR_RSTIR);

	if (dev->has_cfr /* UDC_RES2 is defined */) {
		/* pxa255 (a0+) can avoid a set_config race that could
		 * prevent gadget drivers from configuring correctly
		 */
		FUNC6(dev, UDCCFR, UDCCFR_ACM | UDCCFR_MB1);
	} else {
		/* "USB test mode" for pxa250 errata 40-42 (stepping a0, a1)
		 * which could result in missing packets and interrupts.
		 * supposedly one bit per endpoint, controlling whether it
		 * double buffers or not; ACM/AREN bits fit into the holes.
		 * zero bits (like USIR0_IRx) disable double buffering.
		 */
		FUNC6(dev, UDC_RES1, 0x00);
		FUNC6(dev, UDC_RES2, 0x00);
	}

	/* enable suspend/resume and reset irqs */
	FUNC3(dev, UDCCR_SRM | UDCCR_REM);

	/* enable ep0 irqs */
	FUNC6(dev, UICR0, FUNC4(dev, UICR0) & ~UICR0_IM0);

	/* if hardware supports it, pullup D+ and wait for reset */
	FUNC1();
}