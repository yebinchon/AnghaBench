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
struct cmdbuf_t {struct cmdbuf_t* next; } ;
struct cardstate {int gotfwver; int channels; int /*<<< orphan*/  waitqueue; scalar_t__ waiting; int /*<<< orphan*/  cmd_result; scalar_t__ bcs; int /*<<< orphan*/  lock; scalar_t__ cbytes; scalar_t__ commands_pending; scalar_t__ cur_at_seq; scalar_t__ dle; scalar_t__ cmdbytes; scalar_t__ curlen; int /*<<< orphan*/ * lastcmdbuf; struct cmdbuf_t* cmdbuf; TYPE_1__* inbuf; int /*<<< orphan*/  at_state; int /*<<< orphan*/  mstate; int /*<<< orphan*/  mode; } ;
struct TYPE_2__ {scalar_t__ tail; scalar_t__ head; int /*<<< orphan*/  inputstate; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  INS_command ; 
 int /*<<< orphan*/  MS_UNINITIALIZED ; 
 int /*<<< orphan*/  M_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cardstate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,struct cardstate*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cmdbuf_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct cardstate *cs)
{
	struct cmdbuf_t *cb, *tcb;
	int i;
	unsigned long flags;

	FUNC7(&cs->lock, flags);

	cs->mode = M_UNKNOWN;
	cs->mstate = MS_UNINITIALIZED;

	FUNC0(&cs->at_state);
	FUNC1(cs);
	FUNC2(&cs->at_state, NULL, cs, 0);

	cs->inbuf->inputstate = INS_command;
	cs->inbuf->head = 0;
	cs->inbuf->tail = 0;

	cb = cs->cmdbuf;
	while (cb) {
		tcb = cb;
		cb = cb->next;
		FUNC5(tcb);
	}
	cs->cmdbuf = cs->lastcmdbuf = NULL;
	cs->curlen = 0;
	cs->cmdbytes = 0;
	cs->gotfwver = -1;
	cs->dle = 0;
	cs->cur_at_seq = 0;
	cs->commands_pending = 0;
	cs->cbytes = 0;

	FUNC8(&cs->lock, flags);

	for (i = 0; i < cs->channels; ++i) {
		FUNC3(cs->bcs + i);
		if (FUNC4(cs->bcs + i, cs, i) < 0)
			FUNC6("could not allocate channel %d data\n", i);
	}

	if (cs->waiting) {
		cs->cmd_result = -ENODEV;
		cs->waiting = 0;
		FUNC9(&cs->waitqueue);
	}
}