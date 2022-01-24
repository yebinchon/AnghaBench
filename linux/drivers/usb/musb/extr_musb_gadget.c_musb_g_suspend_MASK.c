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
typedef  int u8 ;
struct musb {int is_suspended; TYPE_3__* xceiv; int /*<<< orphan*/  lock; int /*<<< orphan*/  g; TYPE_1__* gadget_driver; int /*<<< orphan*/  mregs; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* suspend ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MUSB_DEVCTL ; 
 int MUSB_DEVCTL_VBUS ; 
#define  OTG_STATE_B_IDLE 129 
#define  OTG_STATE_B_PERIPHERAL 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(struct musb *musb)
{
	u8	devctl;

	devctl = FUNC2(musb->mregs, MUSB_DEVCTL);
	FUNC1(musb, "musb_g_suspend: devctl %02x", devctl);

	switch (musb->xceiv->otg->state) {
	case OTG_STATE_B_IDLE:
		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
			musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
		break;
	case OTG_STATE_B_PERIPHERAL:
		musb->is_suspended = 1;
		if (musb->gadget_driver && musb->gadget_driver->suspend) {
			FUNC4(&musb->lock);
			musb->gadget_driver->suspend(&musb->g);
			FUNC3(&musb->lock);
		}
		break;
	default:
		/* REVISIT if B_HOST, clear DEVCTL.HOSTREQ;
		 * A_PERIPHERAL may need care too
		 */
		FUNC0("unhandled SUSPEND transition (%s)",
				FUNC6(musb->xceiv->otg->state));
	}
}