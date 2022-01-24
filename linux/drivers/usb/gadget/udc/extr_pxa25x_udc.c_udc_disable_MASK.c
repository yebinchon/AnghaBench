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
struct pxa25x_udc {TYPE_1__ gadget; } ;

/* Variables and functions */
 int UDCCR_REM ; 
 int UDCCR_SRM ; 
 int /*<<< orphan*/  UDCCR_UDE ; 
 int /*<<< orphan*/  UFNRH ; 
 int UFNRH_SIM ; 
 int /*<<< orphan*/  UICR0 ; 
 int /*<<< orphan*/  UICR1 ; 
 int /*<<< orphan*/  USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa25x_udc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct pxa25x_udc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa25x_udc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa25x_udc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct pxa25x_udc *dev)
{
	/* block all irqs */
	FUNC3(dev, UDCCR_SRM|UDCCR_REM);
	FUNC4(dev, UICR0, 0xff);
	FUNC4(dev, UICR1, 0xff);
	FUNC4(dev, UFNRH, UFNRH_SIM);

	/* if hardware supports it, disconnect from usb */
	FUNC1();

	FUNC2(dev, UDCCR_UDE);

	FUNC0 (dev);
	dev->gadget.speed = USB_SPEED_UNKNOWN;
}