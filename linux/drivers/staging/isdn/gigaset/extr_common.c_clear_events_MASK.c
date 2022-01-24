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
struct event_t {int /*<<< orphan*/  ptr; } ;
struct cardstate {unsigned int ev_head; unsigned int ev_tail; int /*<<< orphan*/  ev_lock; struct event_t* events; } ;

/* Variables and functions */
 unsigned int MAX_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct cardstate *cs)
{
	struct event_t *ev;
	unsigned head, tail;
	unsigned long flags;

	FUNC1(&cs->ev_lock, flags);

	head = cs->ev_head;
	tail = cs->ev_tail;

	while (tail != head) {
		ev = cs->events + head;
		FUNC0(ev->ptr);
		head = (head + 1) % MAX_EVENTS;
	}

	cs->ev_head = tail;

	FUNC2(&cs->ev_lock, flags);
}