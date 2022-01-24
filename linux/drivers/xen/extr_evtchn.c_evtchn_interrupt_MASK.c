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
struct user_evtchn {int enabled; int /*<<< orphan*/  port; struct per_user_data* user; } ;
struct per_user_data {scalar_t__ ring_prod; scalar_t__ ring_cons; scalar_t__ ring_size; int ring_overflow; int /*<<< orphan*/  ring_prod_lock; int /*<<< orphan*/  evtchn_async_queue; int /*<<< orphan*/  evtchn_wait; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,struct per_user_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct per_user_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct user_evtchn *evtchn = data;
	struct per_user_data *u = evtchn->user;

	FUNC0(!evtchn->enabled,
	     "Interrupt for port %d, but apparently not enabled; per-user %p\n",
	     evtchn->port, u);

	FUNC1(irq);
	evtchn->enabled = false;

	FUNC4(&u->ring_prod_lock);

	if ((u->ring_prod - u->ring_cons) < u->ring_size) {
		*FUNC2(u, u->ring_prod) = evtchn->port;
		FUNC7(); /* Ensure ring contents visible */
		if (u->ring_cons == u->ring_prod++) {
			FUNC6(&u->evtchn_wait);
			FUNC3(&u->evtchn_async_queue,
				    SIGIO, POLL_IN);
		}
	} else
		u->ring_overflow = 1;

	FUNC5(&u->ring_prod_lock);

	return IRQ_HANDLED;
}