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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct musb {int port1_status; int /*<<< orphan*/  lock; int /*<<< orphan*/  gadget_driver; int /*<<< orphan*/  is_active; TYPE_2__* xceiv; int /*<<< orphan*/  controller; int /*<<< orphan*/  idle_timeout; int /*<<< orphan*/  a_wait_bcon; } ;
struct TYPE_4__ {TYPE_1__* otg; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  OTG_STATE_A_IDLE 129 
#define  OTG_STATE_A_WAIT_BCON 128 
 int TUSB_PRCM_WBUS ; 
 int TUSB_PRCM_WHOSTDISCON ; 
 int TUSB_PRCM_WID ; 
 int TUSB_PRCM_WVBUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_timer ; 
 struct musb* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct musb*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct musb* musb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct musb*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct musb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct timer_list *t)
{
	struct musb	*musb = FUNC1(musb, t, dev_timer);
	unsigned long	flags;

	FUNC3(&musb->lock, flags);

	switch (musb->xceiv->otg->state) {
	case OTG_STATE_A_WAIT_BCON:
		if ((musb->a_wait_bcon != 0)
			&& (musb->idle_timeout == 0
				|| FUNC5(jiffies, musb->idle_timeout))) {
			FUNC0(musb->controller, "Nothing connected %s, turning off VBUS\n",
					FUNC8(musb->xceiv->otg->state));
		}
		/* FALLTHROUGH */
	case OTG_STATE_A_IDLE:
		FUNC7(musb, 0);
	default:
		break;
	}

	if (!musb->is_active) {
		u32	wakeups;

		/* wait until hub_wq handles port change status */
		if (FUNC2(musb) && (musb->port1_status >> 16))
			goto done;

		if (!musb->gadget_driver) {
			wakeups = 0;
		} else {
			wakeups = TUSB_PRCM_WHOSTDISCON
				| TUSB_PRCM_WBUS
					| TUSB_PRCM_WVBUS;
			wakeups |= TUSB_PRCM_WID;
		}
		FUNC6(musb, wakeups);
	}
done:
	FUNC4(&musb->lock, flags);
}