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
struct iscsi_task {TYPE_1__* conn; } ;
struct iscsi_session {int /*<<< orphan*/  back_lock; } ;
struct TYPE_2__ {struct iscsi_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iscsi_task *task)
{
	struct iscsi_session *session = task->conn->session;

	/* regular RX path uses back_lock */
	FUNC1(&session->back_lock);
	FUNC0(task);
	FUNC2(&session->back_lock);
}