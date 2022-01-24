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
struct cardstate {int cs_init; int channels; int /*<<< orphan*/  mutex; int /*<<< orphan*/  bcs; int /*<<< orphan*/  inbuf; int /*<<< orphan*/  port; int /*<<< orphan*/  at_state; TYPE_1__* ops; int /*<<< orphan*/  timer; int /*<<< orphan*/  event_tasklet; int /*<<< orphan*/  lock; scalar_t__ running; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* freecshw ) (struct cardstate*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_INIT ; 
 int /*<<< orphan*/  VALID_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC9 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(struct cardstate *cs)
{
	int i;
	unsigned long flags;

	if (!cs)
		return;

	FUNC12(&cs->mutex);

	FUNC14(&cs->lock, flags);
	cs->running = 0;
	FUNC15(&cs->lock, flags); /* event handler and timer are
						     not rescheduled below */

	FUNC17(&cs->event_tasklet);
	FUNC3(&cs->timer);

	switch (cs->cs_init) {
	default:
		/* clear B channel structures */
		for (i = 0; i < cs->channels; ++i) {
			FUNC5(DEBUG_INIT, "clearing bcs[%d]", i);
			FUNC7(cs->bcs + i);
		}

		/* clear device sysfs */
		FUNC6(cs);

		FUNC8(cs);

		FUNC5(DEBUG_INIT, "clearing hw");
		cs->ops->freecshw(cs);

		/* fall through */
	case 2: /* error in initcshw */
		/* Deregister from LL */
		FUNC11(cs, VALID_ID);
		FUNC9(cs);

		/* fall through */
	case 1: /* error when registering to LL */
		FUNC5(DEBUG_INIT, "clearing at_state");
		FUNC0(&cs->at_state);
		FUNC2(cs);
		FUNC1(cs);
		FUNC18(&cs->port);

		/* fall through */
	case 0:	/* error in basic setup */
		FUNC5(DEBUG_INIT, "freeing inbuf");
		FUNC10(cs->inbuf);
		FUNC10(cs->bcs);
	}

	FUNC13(&cs->mutex);
	FUNC4(cs);
}