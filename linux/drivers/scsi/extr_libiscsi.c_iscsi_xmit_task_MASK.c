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
struct iscsi_task {int /*<<< orphan*/  last_xfer; } ;
struct iscsi_conn {TYPE_2__* session; struct iscsi_task* task; int /*<<< orphan*/  suspend_tx; } ;
struct TYPE_4__ {int /*<<< orphan*/  back_lock; int /*<<< orphan*/  frwd_lock; TYPE_1__* tt; } ;
struct TYPE_3__ {int (* xmit_task ) (struct iscsi_task*) ;} ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  ISCSI_SUSPEND_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_task*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct iscsi_task*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct iscsi_conn *conn)
{
	struct iscsi_task *task = conn->task;
	int rc;

	if (FUNC7(ISCSI_SUSPEND_BIT, &conn->suspend_tx))
		return -ENODATA;

	FUNC3(&conn->session->back_lock);
	if (conn->task == NULL) {
		FUNC5(&conn->session->back_lock);
		return -ENODATA;
	}
	FUNC0(task);
	FUNC5(&conn->session->back_lock);
	FUNC5(&conn->session->frwd_lock);
	rc = conn->session->tt->xmit_task(task);
	FUNC3(&conn->session->frwd_lock);
	if (!rc) {
		/* done with this task */
		task->last_xfer = jiffies;
		conn->task = NULL;
	}
	/* regular RX path uses back_lock */
	FUNC2(&conn->session->back_lock);
	FUNC1(task);
	FUNC4(&conn->session->back_lock);
	return rc;
}