#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct slim_val_inf {int num_bytes; scalar_t__* wbuf; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct slim_sched {scalar_t__ clk_state; int /*<<< orphan*/  m_reconf; int /*<<< orphan*/  pause_comp; } ;
struct slim_controller {int (* wakeup ) (struct slim_controller*) ;int /*<<< orphan*/  txn_lock; int /*<<< orphan*/  tid_idr; struct slim_sched sched; } ;
struct TYPE_4__ {int rl; int /*<<< orphan*/  mc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct slim_val_inf*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ETIMEDOUT ; 
 scalar_t__ SLIM_CLK_ACTIVE ; 
 scalar_t__ SLIM_CLK_ENTERING_PAUSE ; 
 scalar_t__ SLIM_CLK_PAUSED ; 
 scalar_t__ SLIM_CLK_UNSPECIFIED ; 
 int /*<<< orphan*/  SLIM_LA_MANAGER ; 
 int SLIM_MAX_TIDS ; 
 int /*<<< orphan*/  SLIM_MSG_MC_BEGIN_RECONFIGURATION ; 
 int /*<<< orphan*/  SLIM_MSG_MC_NEXT_PAUSE_CLOCK ; 
 int /*<<< orphan*/  SLIM_MSG_MC_RECONFIGURE_NOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct slim_controller*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC10 (struct slim_controller*) ; 
 TYPE_1__ txn ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC12(struct slim_controller *ctrl, bool wakeup, u8 restart)
{
	int i, ret = 0;
	unsigned long flags;
	struct slim_sched *sched = &ctrl->sched;
	struct slim_val_inf msg = {0, 0, NULL, NULL};

	FUNC0(txn, SLIM_MSG_MC_BEGIN_RECONFIGURATION,
				3, SLIM_LA_MANAGER, &msg);

	if (wakeup == false && restart > SLIM_CLK_UNSPECIFIED)
		return -EINVAL;

	FUNC4(&sched->m_reconf);
	if (wakeup) {
		if (sched->clk_state == SLIM_CLK_ACTIVE) {
			FUNC5(&sched->m_reconf);
			return 0;
		}

		/*
		 * Fine-tune calculation based on clock gear,
		 * message-bandwidth after bandwidth management
		 */
		ret = FUNC11(&sched->pause_comp,
				FUNC3(100));
		if (!ret) {
			FUNC5(&sched->m_reconf);
			FUNC6("Previous clock pause did not finish");
			return -ETIMEDOUT;
		}
		ret = 0;

		/*
		 * Slimbus framework will call controller wakeup
		 * Controller should make sure that it sets active framer
		 * out of clock pause
		 */
		if (sched->clk_state == SLIM_CLK_PAUSED && ctrl->wakeup)
			ret = ctrl->wakeup(ctrl);
		if (!ret)
			sched->clk_state = SLIM_CLK_ACTIVE;
		FUNC5(&sched->m_reconf);

		return ret;
	}

	/* already paused */
	if (ctrl->sched.clk_state == SLIM_CLK_PAUSED) {
		FUNC5(&sched->m_reconf);
		return 0;
	}

	FUNC8(&ctrl->txn_lock, flags);
	for (i = 0; i < SLIM_MAX_TIDS; i++) {
		/* Pending response for a message */
		if (FUNC2(&ctrl->tid_idr, i)) {
			FUNC9(&ctrl->txn_lock, flags);
			FUNC5(&sched->m_reconf);
			return -EBUSY;
		}
	}
	FUNC9(&ctrl->txn_lock, flags);

	sched->clk_state = SLIM_CLK_ENTERING_PAUSE;

	/* clock pause sequence */
	ret = FUNC7(ctrl, &txn);
	if (ret)
		goto clk_pause_ret;

	txn.mc = SLIM_MSG_MC_NEXT_PAUSE_CLOCK;
	txn.rl = 4;
	msg.num_bytes = 1;
	msg.wbuf = &restart;
	ret = FUNC7(ctrl, &txn);
	if (ret)
		goto clk_pause_ret;

	txn.mc = SLIM_MSG_MC_RECONFIGURE_NOW;
	txn.rl = 3;
	msg.num_bytes = 1;
	msg.wbuf = NULL;
	ret = FUNC7(ctrl, &txn);

clk_pause_ret:
	if (ret) {
		sched->clk_state = SLIM_CLK_ACTIVE;
	} else {
		sched->clk_state = SLIM_CLK_PAUSED;
		FUNC1(&sched->pause_comp);
	}
	FUNC5(&sched->m_reconf);

	return ret;
}