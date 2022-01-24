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
struct event_t {int type; int cid; int parameter; void* arg; void* ptr; struct at_state_t* at_state; } ;
struct cardstate {unsigned int ev_tail; unsigned int ev_head; int /*<<< orphan*/  ev_lock; struct event_t* events; int /*<<< orphan*/  dev; } ;
struct at_state_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_EVENT ; 
 unsigned int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

struct event_t *FUNC5(struct cardstate *cs,
				  struct at_state_t *at_state, int type,
				  void *ptr, int parameter, void *arg)
{
	unsigned long flags;
	unsigned next, tail;
	struct event_t *event = NULL;

	FUNC1(DEBUG_EVENT, "queueing event %d", type);

	FUNC2(&cs->ev_lock, flags);

	tail = cs->ev_tail;
	next = (tail + 1) % MAX_EVENTS;
	if (FUNC4(next == cs->ev_head))
		FUNC0(cs->dev, "event queue full\n");
	else {
		event = cs->events + tail;
		event->type = type;
		event->at_state = at_state;
		event->cid = -1;
		event->ptr = ptr;
		event->arg = arg;
		event->parameter = parameter;
		cs->ev_tail = next;
	}

	FUNC3(&cs->ev_lock, flags);

	return event;
}