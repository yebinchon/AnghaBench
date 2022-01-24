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
struct musb {TYPE_2__* xceiv; int /*<<< orphan*/  otg_timer; int /*<<< orphan*/  controller; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  OTG_STATE_A_PERIPHERAL 133 
#define  OTG_STATE_A_SUSPEND 132 
#define  OTG_STATE_A_WAIT_BCON 131 
#define  OTG_STATE_B_IDLE 130 
#define  OTG_STATE_B_PERIPHERAL 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int /*<<< orphan*/  FUNC0 (struct musb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct musb*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*) ; 
 int /*<<< orphan*/  FUNC8 (struct musb*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct musb *musb)
{
	if (FUNC3(musb)) {
		/*
		 * When BABBLE happens what we can depends on which
		 * platform MUSB is running, because some platforms
		 * implemented proprietary means for 'recovering' from
		 * Babble conditions. One such platform is AM335x. In
		 * most cases, however, the only thing we can do is
		 * drop the session.
		 */
		FUNC2(musb->controller, "Babble\n");
		FUNC8(musb);
	} else {
		FUNC6(musb, "BUS RESET as %s",
			FUNC9(musb->xceiv->otg->state));
		switch (musb->xceiv->otg->state) {
		case OTG_STATE_A_SUSPEND:
			FUNC7(musb);
			/* FALLTHROUGH */
		case OTG_STATE_A_WAIT_BCON:	/* OPT TD.4.7-900ms */
			/* never use invalid T(a_wait_bcon) */
			FUNC6(musb, "HNP: in %s, %d msec timeout",
				FUNC9(musb->xceiv->otg->state),
				FUNC0(musb));
			FUNC4(&musb->otg_timer, jiffies
				+ FUNC5(FUNC0(musb)));
			break;
		case OTG_STATE_A_PERIPHERAL:
			FUNC1(&musb->otg_timer);
			FUNC7(musb);
			break;
		case OTG_STATE_B_WAIT_ACON:
			FUNC6(musb, "HNP: RESET (%s), to b_peripheral",
				FUNC9(musb->xceiv->otg->state));
			musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
			FUNC7(musb);
			break;
		case OTG_STATE_B_IDLE:
			musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
			/* FALLTHROUGH */
		case OTG_STATE_B_PERIPHERAL:
			FUNC7(musb);
			break;
		default:
			FUNC6(musb, "Unhandled BUS RESET as %s",
				FUNC9(musb->xceiv->otg->state));
		}
	}
}