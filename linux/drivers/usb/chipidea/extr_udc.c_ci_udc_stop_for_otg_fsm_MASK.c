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
struct TYPE_4__ {int a_bidl_adis_tmout; int /*<<< orphan*/  lock; TYPE_1__* otg; int /*<<< orphan*/  protocol; } ;
struct ci_hdrc {TYPE_2__ fsm; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ OTG_STATE_A_PERIPHERAL ; 
 scalar_t__ OTG_STATE_B_PERIPHERAL ; 
 scalar_t__ OTG_STATE_UNDEFINED ; 
 int /*<<< orphan*/  PROTO_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ci_hdrc *ci)
{
	if (!FUNC1(ci))
		return;

	FUNC2(&ci->fsm.lock);
	if (ci->fsm.otg->state == OTG_STATE_A_PERIPHERAL) {
		ci->fsm.a_bidl_adis_tmout = 1;
		FUNC0(ci);
	} else if (ci->fsm.otg->state == OTG_STATE_B_PERIPHERAL) {
		ci->fsm.protocol = PROTO_UNDEF;
		ci->fsm.otg->state = OTG_STATE_UNDEFINED;
	}
	FUNC3(&ci->fsm.lock);
}