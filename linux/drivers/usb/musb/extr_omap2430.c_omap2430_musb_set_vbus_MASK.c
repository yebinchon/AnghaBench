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
typedef  int u8 ;
struct usb_otg {scalar_t__ state; } ;
struct musb {int is_active; int /*<<< orphan*/  mregs; TYPE_1__* xceiv; int /*<<< orphan*/  controller; } ;
struct TYPE_2__ {struct usb_otg* otg; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_BDEVICE ; 
 int MUSB_DEVCTL_SESSION ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 scalar_t__ OTG_STATE_A_IDLE ; 
 scalar_t__ OTG_STATE_A_WAIT_VRISE ; 
 scalar_t__ OTG_STATE_B_IDLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 unsigned long FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_otg*,int) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct musb *musb, int is_on)
{
	struct usb_otg	*otg = musb->xceiv->otg;
	u8		devctl;
	unsigned long timeout = jiffies + FUNC6(1000);
	/* HDRC controls CPEN, but beware current surges during device
	 * connect.  They can trigger transient overcurrent conditions
	 * that must be ignored.
	 */

	devctl = FUNC7(musb->mregs, MUSB_DEVCTL);

	if (is_on) {
		if (musb->xceiv->otg->state == OTG_STATE_A_IDLE) {
			int loops = 100;
			/* start the session */
			devctl |= MUSB_DEVCTL_SESSION;
			FUNC8(musb->mregs, MUSB_DEVCTL, devctl);
			/*
			 * Wait for the musb to set as A device to enable the
			 * VBUS
			 */
			while (FUNC7(musb->mregs, MUSB_DEVCTL) &
			       MUSB_DEVCTL_BDEVICE) {

				FUNC5(5);
				FUNC2();

				if (FUNC10(jiffies, timeout)
				    || loops-- <= 0) {
					FUNC4(musb->controller,
					"configured as A device timeout");
					break;
				}
			}

			FUNC9(otg, 1);
		} else {
			musb->is_active = 1;
			musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
			devctl |= MUSB_DEVCTL_SESSION;
			FUNC1(musb);
		}
	} else {
		musb->is_active = 0;

		/* NOTE:  we're skipping A_WAIT_VFALL -> A_IDLE and
		 * jumping right to B_IDLE...
		 */

		musb->xceiv->otg->state = OTG_STATE_B_IDLE;
		devctl &= ~MUSB_DEVCTL_SESSION;

		FUNC0(musb);
	}
	FUNC8(musb->mregs, MUSB_DEVCTL, devctl);

	FUNC3(musb->controller, "VBUS %s, devctl %02x "
		/* otg %3x conf %08x prcm %08x */ "\n",
		FUNC11(musb->xceiv->otg->state),
		FUNC7(musb->mregs, MUSB_DEVCTL));
}