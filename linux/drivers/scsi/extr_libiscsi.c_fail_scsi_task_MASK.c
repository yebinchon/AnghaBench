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
struct scsi_cmnd {int result; } ;
struct iscsi_task {scalar_t__ state; struct scsi_cmnd* sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_2__ {int /*<<< orphan*/  back_lock; int /*<<< orphan*/  queued_cmdsn; } ;

/* Variables and functions */
 int DID_TRANSPORT_DISRUPTED ; 
 int ISCSI_TASK_ABRT_SESS_RECOV ; 
 int ISCSI_TASK_ABRT_TMF ; 
 int ISCSI_TASK_COMPLETED ; 
 scalar_t__ ISCSI_TASK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_task*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iscsi_task *task, int err)
{
	struct iscsi_conn *conn = task->conn;
	struct scsi_cmnd *sc;
	int state;

	/*
	 * if a command completes and we get a successful tmf response
	 * we will hit this because the scsi eh abort code does not take
	 * a ref to the task.
	 */
	sc = task->sc;
	if (!sc)
		return;

	if (task->state == ISCSI_TASK_PENDING) {
		/*
		 * cmd never made it to the xmit thread, so we should not count
		 * the cmd in the sequencing
		 */
		conn->session->queued_cmdsn--;
		/* it was never sent so just complete like normal */
		state = ISCSI_TASK_COMPLETED;
	} else if (err == DID_TRANSPORT_DISRUPTED)
		state = ISCSI_TASK_ABRT_SESS_RECOV;
	else
		state = ISCSI_TASK_ABRT_TMF;

	sc->result = err << 16;
	FUNC2(sc, FUNC1(sc));

	/* regular RX path uses back_lock */
	FUNC3(&conn->session->back_lock);
	FUNC0(task, state);
	FUNC4(&conn->session->back_lock);
}