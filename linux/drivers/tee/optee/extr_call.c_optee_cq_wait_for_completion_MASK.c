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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct optee_call_queue *cq,
					 struct optee_call_waiter *w)
{
	FUNC5(&w->c);

	FUNC2(&cq->mutex);

	/* Move to end of list to get out of the way for other waiters */
	FUNC1(&w->list_node);
	FUNC4(&w->c);
	FUNC0(&w->list_node, &cq->waiters);

	FUNC3(&cq->mutex);
}