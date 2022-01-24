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
typedef  int u8 ;
struct musb {int is_active; int /*<<< orphan*/  mregs; TYPE_2__* xceiv; int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_SESSION ; 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*) ; 
 scalar_t__ OTG_STATE_A_IDLE ; 
 scalar_t__ OTG_STATE_A_WAIT_VRISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned long FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct musb *musb, int is_on)
{
	u8            devctl;
	unsigned long timeout = jiffies + FUNC5(1000);
	/* HDRC controls CPEN, but beware current surges during device
	 * connect.  They can trigger transient overcurrent conditions
	 * that must be ignored.
	 */

	devctl = FUNC6(musb->mregs, MUSB_DEVCTL);

	if (is_on) {
		if (musb->xceiv->otg->state == OTG_STATE_A_IDLE) {
			/* start the session */
			devctl |= MUSB_DEVCTL_SESSION;
			FUNC7(musb->mregs, MUSB_DEVCTL, devctl);
			/*
			 * Wait for the musb to set as A device to enable the
			 * VBUS
			 */
			while (FUNC6(musb->mregs, MUSB_DEVCTL) & 0x80) {

				if (FUNC8(jiffies, timeout)) {
					FUNC3(musb->controller,
					"configured as A device timeout");
					break;
				}
			}

		} else {
			musb->is_active = 1;
			musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
			devctl |= MUSB_DEVCTL_SESSION;
			FUNC1(musb);
		}
	} else {
		musb->is_active = 0;

		/* NOTE: we're skipping A_WAIT_VFALL -> A_IDLE and jumping
		 * right to B_IDLE...
		 */
		devctl &= ~MUSB_DEVCTL_SESSION;
		FUNC0(musb);
	}
	FUNC7(musb->mregs, MUSB_DEVCTL, devctl);

	/*
	 * Devctl values will be updated after vbus goes below
	 * session_valid. The time taken depends on the capacitance
	 * on VBUS line. The max discharge time can be upto 1 sec
	 * as per the spec. Typically on our platform, it is 200ms
	 */
	if (!is_on)
		FUNC4(200);

	FUNC2(musb->controller, "VBUS %s, devctl %02x\n",
		FUNC9(musb->xceiv->otg->state),
		FUNC6(musb->mregs, MUSB_DEVCTL));
}