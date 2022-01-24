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
struct event_t {int type; int cid; int parameter; int /*<<< orphan*/ * at_state; int /*<<< orphan*/ * arg; void* ptr; } ;
struct cardstate {unsigned int ev_tail; unsigned int ev_head; int /*<<< orphan*/  ev_lock; struct event_t* events; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 unsigned int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct cardstate *cs, int cid, int type,
			  void *ptr, int parameter)
{
	unsigned long flags;
	unsigned next, tail;
	struct event_t *event;

	FUNC1(DEBUG_EVENT, "queueing event %d for cid %d", type, cid);

	FUNC3(&cs->ev_lock, flags);

	tail = cs->ev_tail;
	next = (tail + 1) % MAX_EVENTS;
	if (FUNC5(next == cs->ev_head)) {
		FUNC0(cs->dev, "event queue full\n");
		FUNC2(ptr);
	} else {
		event = cs->events + tail;
		event->type = type;
		event->cid = cid;
		event->ptr = ptr;
		event->arg = NULL;
		event->parameter = parameter;
		event->at_state = NULL;
		cs->ev_tail = next;
	}

	FUNC4(&cs->ev_lock, flags);
}