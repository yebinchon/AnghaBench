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
struct optee_call_waiter {int /*<<< orphan*/  list_node; int /*<<< orphan*/  c; } ;
struct optee_call_queue {int /*<<< orphan*/  mutex; int /*<<< orphan*/  waiters; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct optee_call_queue *cq,
			       struct optee_call_waiter *w)
{
	/*
	 * We're preparing to make a call to secure world. In case we can't
	 * allocate a thread in secure world we'll end up waiting in
	 * optee_cq_wait_for_completion().
	 *
	 * Normally if there's no contention in secure world the call will
	 * complete and we can cleanup directly with optee_cq_wait_final().
	 */
	FUNC2(&cq->mutex);

	/*
	 * We add ourselves to the queue, but we don't wait. This
	 * guarantees that we don't lose a completion if secure world
	 * returns busy and another thread just exited and try to complete
	 * someone.
	 */
	FUNC0(&w->c);
	FUNC1(&w->list_node, &cq->waiters);

	FUNC3(&cq->mutex);
}