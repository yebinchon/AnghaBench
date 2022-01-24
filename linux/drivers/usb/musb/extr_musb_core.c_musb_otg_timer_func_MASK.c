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
struct timer_list {int dummy; } ;
struct musb {int /*<<< orphan*/  lock; TYPE_2__* xceiv; int /*<<< orphan*/  is_active; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  OTG_STATE_A_SUSPEND 130 
#define  OTG_STATE_A_WAIT_BCON 129 
 int OTG_STATE_A_WAIT_VFALL ; 
 int OTG_STATE_B_PERIPHERAL ; 
#define  OTG_STATE_B_WAIT_ACON 128 
 struct musb* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct musb* musb ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  otg_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct musb	*musb = FUNC0(musb, t, otg_timer);
	unsigned long	flags;

	FUNC4(&musb->lock, flags);
	switch (musb->xceiv->otg->state) {
	case OTG_STATE_B_WAIT_ACON:
		FUNC1(musb,
			"HNP: b_wait_acon timeout; back to b_peripheral");
		FUNC2(musb);
		musb->xceiv->otg->state = OTG_STATE_B_PERIPHERAL;
		musb->is_active = 0;
		break;
	case OTG_STATE_A_SUSPEND:
	case OTG_STATE_A_WAIT_BCON:
		FUNC1(musb, "HNP: %s timeout",
			FUNC6(musb->xceiv->otg->state));
		FUNC3(musb, 0);
		musb->xceiv->otg->state = OTG_STATE_A_WAIT_VFALL;
		break;
	default:
		FUNC1(musb, "HNP: Unhandled mode %s",
			FUNC6(musb->xceiv->otg->state));
	}
	FUNC5(&musb->lock, flags);
}