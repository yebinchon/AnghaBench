#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct event_t {int /*<<< orphan*/ * ptr; } ;
struct cardstate {unsigned int ev_head; unsigned int ev_tail; scalar_t__ cur_at_seq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ev_lock; struct event_t* events; int /*<<< orphan*/  commands_pending; } ;

/* Variables and functions */
 int MAX_EVENTS ; 
 scalar_t__ SEQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cardstate*) ; 
 int /*<<< orphan*/  FUNC3 (struct cardstate*,struct event_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct cardstate *cs)
{
	struct event_t *ev;
	unsigned head, tail;
	int i;
	int check_flags = 0;
	int was_busy;
	unsigned long flags;

	FUNC4(&cs->ev_lock, flags);
	head = cs->ev_head;

	for (i = 0; i < 2 * MAX_EVENTS; ++i) {
		tail = cs->ev_tail;
		if (tail == head) {
			if (!check_flags && !cs->commands_pending)
				break;
			check_flags = 0;
			FUNC5(&cs->ev_lock, flags);
			FUNC2(cs);
			FUNC4(&cs->ev_lock, flags);
			tail = cs->ev_tail;
			if (tail == head) {
				if (!cs->commands_pending)
					break;
				continue;
			}
		}

		ev = cs->events + head;
		was_busy = cs->cur_at_seq != SEQ_NONE;
		FUNC5(&cs->ev_lock, flags);
		FUNC3(cs, ev);
		FUNC4(&cs->ev_lock, flags);
		FUNC1(ev->ptr);
		ev->ptr = NULL;
		if (was_busy && cs->cur_at_seq == SEQ_NONE)
			check_flags = 1;

		head = (head + 1) % MAX_EVENTS;
		cs->ev_head = head;
	}

	FUNC5(&cs->ev_lock, flags);

	if (i == 2 * MAX_EVENTS) {
		FUNC0(cs->dev,
			"infinite loop in process_events; aborting.\n");
	}
}