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
struct musb {int is_active; TYPE_3__* xceiv; int /*<<< orphan*/  lock; int /*<<< orphan*/  g; TYPE_1__* gadget_driver; scalar_t__ is_suspended; } ;
struct TYPE_6__ {TYPE_2__* otg; } ;
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* resume ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  OTG_STATE_B_IDLE 130 
#define  OTG_STATE_B_PERIPHERAL 129 
#define  OTG_STATE_B_WAIT_ACON 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5(struct musb *musb)
{
	musb->is_suspended = 0;
	switch (musb->xceiv->otg->state) {
	case OTG_STATE_B_IDLE:
		break;
	case OTG_STATE_B_WAIT_ACON:
	case OTG_STATE_B_PERIPHERAL:
		musb->is_active = 1;
		if (musb->gadget_driver && musb->gadget_driver->resume) {
			FUNC2(&musb->lock);
			musb->gadget_driver->resume(&musb->g);
			FUNC1(&musb->lock);
		}
		break;
	default:
		FUNC0("unhandled RESUME transition (%s)\n",
				FUNC4(musb->xceiv->otg->state));
	}
}