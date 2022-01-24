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
struct cardstate {int connected; scalar_t__ mstate; int control_state; int waiting; int /*<<< orphan*/  mutex; int /*<<< orphan*/  waitqueue; int /*<<< orphan*/  at_state; TYPE_1__* ops; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_line_ctrl ) (struct cardstate*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* baud_rate ) (struct cardstate*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_modem_ctrl ) (struct cardstate*,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  B115200 ; 
 int /*<<< orphan*/  CS8 ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_START ; 
 scalar_t__ MS_LOCKED ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct cardstate*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct cardstate*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

int FUNC10(struct cardstate *cs)
{
	unsigned long flags;

	if (FUNC2(&cs->mutex))
		return -EBUSY;

	FUNC4(&cs->lock, flags);
	cs->connected = 1;
	FUNC5(&cs->lock, flags);

	if (cs->mstate != MS_LOCKED) {
		cs->ops->set_modem_ctrl(cs, 0, TIOCM_DTR | TIOCM_RTS);
		cs->ops->baud_rate(cs, B115200);
		cs->ops->set_line_ctrl(cs, CS8);
		cs->control_state = TIOCM_DTR | TIOCM_RTS;
	}

	cs->waiting = 1;

	if (!FUNC0(cs, &cs->at_state, EV_START, NULL, 0, NULL)) {
		cs->waiting = 0;
		goto error;
	}
	FUNC1(cs);

	FUNC9(cs->waitqueue, !cs->waiting);

	FUNC3(&cs->mutex);
	return 0;

error:
	FUNC3(&cs->mutex);
	return -ENOMEM;
}