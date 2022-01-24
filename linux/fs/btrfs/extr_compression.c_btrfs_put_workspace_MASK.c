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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct list_head {int dummy; } ;
struct workspace_manager {int free_ws; TYPE_1__* ops; int /*<<< orphan*/  ws_wait; int /*<<< orphan*/  total_ws; int /*<<< orphan*/  ws_lock; struct list_head idle_ws; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_workspace ) (struct list_head*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*,struct list_head*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 

void FUNC7(struct workspace_manager *wsm, struct list_head *ws)
{
	struct list_head *idle_ws;
	spinlock_t *ws_lock;
	atomic_t *total_ws;
	wait_queue_head_t *ws_wait;
	int *free_ws;

	idle_ws	 = &wsm->idle_ws;
	ws_lock	 = &wsm->ws_lock;
	total_ws = &wsm->total_ws;
	ws_wait	 = &wsm->ws_wait;
	free_ws	 = &wsm->free_ws;

	FUNC4(ws_lock);
	if (*free_ws <= FUNC3()) {
		FUNC2(ws, idle_ws);
		(*free_ws)++;
		FUNC5(ws_lock);
		goto wake;
	}
	FUNC5(ws_lock);

	wsm->ops->free_workspace(ws);
	FUNC0(total_ws);
wake:
	FUNC1(ws_wait);
}