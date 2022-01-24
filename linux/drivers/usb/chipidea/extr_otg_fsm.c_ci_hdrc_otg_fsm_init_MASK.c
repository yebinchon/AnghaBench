#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int power_up; int id; int b_ssend_srp; int b_sess_vld; int /*<<< orphan*/  lock; int /*<<< orphan*/  host_req_flag; int /*<<< orphan*/ * ops; TYPE_1__* otg; } ;
struct TYPE_8__ {int hnp_polling_support; } ;
struct TYPE_7__ {int /*<<< orphan*/  state; TYPE_2__* gadget; int /*<<< orphan*/  usb_phy; scalar_t__ phy; } ;
struct ci_hdrc {TYPE_3__ fsm; TYPE_4__* dev; int /*<<< orphan*/  next_otg_timer; scalar_t__ enabled_otg_timer_bits; TYPE_2__ gadget; TYPE_1__ otg; int /*<<< orphan*/  usb_phy; scalar_t__ phy; } ;
struct TYPE_10__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NUM_OTG_FSM_TIMERS ; 
 int /*<<< orphan*/  OTGSC_AVVIE ; 
 int /*<<< orphan*/  OTGSC_BSV ; 
 int /*<<< orphan*/  OTGSC_BSVIE ; 
 int /*<<< orphan*/  OTGSC_ID ; 
 int /*<<< orphan*/  OTG_STATE_UNDEFINED ; 
 int FUNC0 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  ci_otg_ops ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ci_hdrc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inputs_attr_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct ci_hdrc *ci)
{
	int retval = 0;

	if (ci->phy)
		ci->otg.phy = ci->phy;
	else
		ci->otg.usb_phy = ci->usb_phy;

	ci->otg.gadget = &ci->gadget;
	ci->fsm.otg = &ci->otg;
	ci->fsm.power_up = 1;
	ci->fsm.id = FUNC4(ci, OTGSC_ID) ? 1 : 0;
	ci->fsm.otg->state = OTG_STATE_UNDEFINED;
	ci->fsm.ops = &ci_otg_ops;
	ci->gadget.hnp_polling_support = 1;
	ci->fsm.host_req_flag = FUNC3(ci->dev, 1, GFP_KERNEL);
	if (!ci->fsm.host_req_flag)
		return -ENOMEM;

	FUNC6(&ci->fsm.lock);

	retval = FUNC0(ci);
	if (retval) {
		FUNC2(ci->dev, "Couldn't init OTG timers\n");
		return retval;
	}
	ci->enabled_otg_timer_bits = 0;
	ci->next_otg_timer = NUM_OTG_FSM_TIMERS;

	retval = FUNC7(&ci->dev->kobj, &inputs_attr_group);
	if (retval < 0) {
		FUNC1(ci->dev,
			"Can't register sysfs attr group: %d\n", retval);
		return retval;
	}

	/* Enable A vbus valid irq */
	FUNC5(ci, OTGSC_AVVIE, OTGSC_AVVIE);

	if (ci->fsm.id) {
		ci->fsm.b_ssend_srp =
			FUNC4(ci, OTGSC_BSV) ? 0 : 1;
		ci->fsm.b_sess_vld =
			FUNC4(ci, OTGSC_BSV) ? 1 : 0;
		/* Enable BSV irq */
		FUNC5(ci, OTGSC_BSVIE, OTGSC_BSVIE);
	}

	return 0;
}