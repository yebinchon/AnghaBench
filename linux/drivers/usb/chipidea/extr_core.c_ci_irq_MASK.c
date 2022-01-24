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
typedef  int u32 ;
struct ci_hdrc {int wakeup_int; int id_event; int b_sess_valid_event; scalar_t__ role; scalar_t__ is_otg; int /*<<< orphan*/  dev; scalar_t__ in_lpm; } ;
typedef  scalar_t__ irqreturn_t ;
struct TYPE_2__ {scalar_t__ (* irq ) (struct ci_hdrc*) ;} ;

/* Variables and functions */
 scalar_t__ CI_ROLE_END ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int OTGSC_BSVIE ; 
 int OTGSC_BSVIS ; 
 int OTGSC_IDIE ; 
 int OTGSC_IDIS ; 
 scalar_t__ FUNC0 (struct ci_hdrc*) ; 
 scalar_t__ FUNC1 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ci_hdrc*) ; 
 TYPE_1__* FUNC3 (struct ci_hdrc*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct ci_hdrc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ci_hdrc*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ci_hdrc*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct ci_hdrc *ci = data;
	irqreturn_t ret = IRQ_NONE;
	u32 otgsc = 0;

	if (ci->in_lpm) {
		FUNC4(irq);
		ci->wakeup_int = true;
		FUNC7(ci->dev);
		return IRQ_HANDLED;
	}

	if (ci->is_otg) {
		otgsc = FUNC5(ci, ~0);
		if (FUNC1(ci)) {
			ret = FUNC0(ci);
			if (ret == IRQ_HANDLED)
				return ret;
		}
	}

	/*
	 * Handle id change interrupt, it indicates device/host function
	 * switch.
	 */
	if (ci->is_otg && (otgsc & OTGSC_IDIE) && (otgsc & OTGSC_IDIS)) {
		ci->id_event = true;
		/* Clear ID change irq status */
		FUNC6(ci, OTGSC_IDIS, OTGSC_IDIS);
		FUNC2(ci);
		return IRQ_HANDLED;
	}

	/*
	 * Handle vbus change interrupt, it indicates device connection
	 * and disconnection events.
	 */
	if (ci->is_otg && (otgsc & OTGSC_BSVIE) && (otgsc & OTGSC_BSVIS)) {
		ci->b_sess_valid_event = true;
		/* Clear BSV irq */
		FUNC6(ci, OTGSC_BSVIS, OTGSC_BSVIS);
		FUNC2(ci);
		return IRQ_HANDLED;
	}

	/* Handle device/host interrupt */
	if (ci->role != CI_ROLE_END)
		ret = FUNC3(ci)->irq(ci);

	return ret;
}