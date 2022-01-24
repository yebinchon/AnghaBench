#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct TYPE_4__ {struct bas_cardstate* bas; } ;
struct cardstate {int /*<<< orphan*/  bcs; int /*<<< orphan*/  dev; TYPE_1__ hw; } ;
struct bas_cardstate {int basstate; int /*<<< orphan*/  int_in_wq; int /*<<< orphan*/  timer_int_in; int /*<<< orphan*/  timer_cmd_in; int /*<<< orphan*/  timer_atrdy; int /*<<< orphan*/  timer_ctrl; int /*<<< orphan*/  urb_int_in; int /*<<< orphan*/  urb_ctrl; int /*<<< orphan*/  pending; int /*<<< orphan*/  waitqueue; } ;
struct TYPE_5__ {scalar_t__ event; } ;
typedef  TYPE_2__ pm_message_t ;

/* Variables and functions */
 int BAS_TIMEOUT ; 
 int BS_ATOPEN ; 
 int BS_ATRDPEND ; 
 int BS_ATWRPEND ; 
 int BS_B1OPEN ; 
 int BS_B2OPEN ; 
 int BS_SUSPEND ; 
 int /*<<< orphan*/  DEBUG_SUSPEND ; 
 int EBUSY ; 
 int /*<<< orphan*/  HD_CLOSE_ATCHANNEL ; 
 int HZ ; 
 scalar_t__ PM_EVENT_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bas_cardstate*,int,int) ; 
 struct cardstate* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *intf, pm_message_t message)
{
	struct cardstate *cs = FUNC6(intf);
	struct bas_cardstate *ucs = cs->hw.bas;
	int rc;

	/* set suspend flag; this stops AT command/response traffic */
	if (FUNC5(ucs, BS_SUSPEND, 0) & BS_SUSPEND) {
		FUNC3(DEBUG_SUSPEND, "already suspended");
		return 0;
	}

	/* wait a bit for blocking conditions to go away */
	rc = FUNC8(ucs->waitqueue,
				!(ucs->basstate &
				  (BS_B1OPEN | BS_B2OPEN | BS_ATRDPEND | BS_ATWRPEND)),
				BAS_TIMEOUT * HZ / 10);
	FUNC3(DEBUG_SUSPEND, "wait_event_timeout() -> %d", rc);

	/* check for conditions preventing suspend */
	if (ucs->basstate & (BS_B1OPEN | BS_B2OPEN | BS_ATRDPEND | BS_ATWRPEND)) {
		FUNC2(cs->dev, "cannot suspend:\n");
		if (ucs->basstate & BS_B1OPEN)
			FUNC2(cs->dev, " B channel 1 open\n");
		if (ucs->basstate & BS_B2OPEN)
			FUNC2(cs->dev, " B channel 2 open\n");
		if (ucs->basstate & BS_ATRDPEND)
			FUNC2(cs->dev, " receiving AT reply\n");
		if (ucs->basstate & BS_ATWRPEND)
			FUNC2(cs->dev, " sending AT command\n");
		FUNC5(ucs, 0, BS_SUSPEND);
		return -EBUSY;
	}

	/* close AT channel if open */
	if (ucs->basstate & BS_ATOPEN) {
		FUNC3(DEBUG_SUSPEND, "closing AT channel");
		rc = FUNC4(cs->bcs, HD_CLOSE_ATCHANNEL, 0, 0);
		if (rc) {
			FUNC5(ucs, 0, BS_SUSPEND);
			return rc;
		}
		FUNC8(ucs->waitqueue, !ucs->pending,
				   BAS_TIMEOUT * HZ / 10);
		/* in case of timeout, proceed anyway */
	}

	/* kill all URBs and delayed work that might still be pending */
	FUNC7(ucs->urb_ctrl);
	FUNC7(ucs->urb_int_in);
	FUNC1(&ucs->timer_ctrl);
	FUNC1(&ucs->timer_atrdy);
	FUNC1(&ucs->timer_cmd_in);
	FUNC1(&ucs->timer_int_in);

	/* don't try to cancel int_in_wq from within reset as it
	 * might be the one requesting the reset
	 */
	if (message.event != PM_EVENT_ON)
		FUNC0(&ucs->int_in_wq);

	FUNC3(DEBUG_SUSPEND, "suspend complete");
	return 0;
}