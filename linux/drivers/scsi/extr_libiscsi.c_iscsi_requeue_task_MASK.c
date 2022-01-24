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
struct iscsi_task {int /*<<< orphan*/  running; struct iscsi_conn* conn; } ;
struct iscsi_conn {int /*<<< orphan*/  taskqueuelock; int /*<<< orphan*/  requeue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct iscsi_task *task)
{
	struct iscsi_conn *conn = task->conn;

	/*
	 * this may be on the requeue list already if the xmit_task callout
	 * is handling the r2ts while we are adding new ones
	 */
	FUNC3(&conn->taskqueuelock);
	if (FUNC2(&task->running))
		FUNC1(&task->running, &conn->requeue);
	FUNC4(&conn->taskqueuelock);
	FUNC0(conn);
}