#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct list_head* next; } ;
struct workspace_manager {int /*<<< orphan*/  total_ws; TYPE_1__* ops; TYPE_2__ idle_ws; } ;
struct list_head {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* free_workspace ) (struct list_head*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*) ; 

void FUNC4(struct workspace_manager *wsman)
{
	struct list_head *ws;

	while (!FUNC2(&wsman->idle_ws)) {
		ws = wsman->idle_ws.next;
		FUNC1(ws);
		wsman->ops->free_workspace(ws);
		FUNC0(&wsman->total_ws);
	}
}