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
struct TYPE_3__ {int /*<<< orphan*/ * ptr; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/ * cmnd; int /*<<< orphan*/  device; TYPE_1__ SCp; } ;
struct iscsi_task {int /*<<< orphan*/  running; } ;
struct iscsi_session {int state; int /*<<< orphan*/  frwd_lock; int /*<<< orphan*/  back_lock; int /*<<< orphan*/  queued_cmdsn; int /*<<< orphan*/  cmdsn; TYPE_2__* tt; struct iscsi_conn* leadconn; } ;
struct iscsi_host {int /*<<< orphan*/  workq; } ;
struct iscsi_conn {int /*<<< orphan*/  taskqueuelock; int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  suspend_tx; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* xmit_task ) (struct iscsi_task*) ;} ;

/* Variables and functions */
 int DID_ABORT ; 
 int DID_IMM_RETRY ; 
 int DID_NO_CONNECT ; 
 int DID_REQUEUE ; 
 int DID_TRANSPORT_FAILFAST ; 
 int EACCES ; 
 int ENOMEM ; 
 int FAILURE_OOM ; 
 int FAILURE_SESSION_FAILED ; 
 int FAILURE_SESSION_FREED ; 
 int FAILURE_SESSION_IN_RECOVERY ; 
 int FAILURE_SESSION_LOGGING_OUT ; 
 int FAILURE_SESSION_NOT_READY ; 
 int FAILURE_SESSION_RECOVERY_TIMEOUT ; 
 int FAILURE_SESSION_TERMINATE ; 
 int FAILURE_WINDOW_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_session*,char*,int /*<<< orphan*/ ,int) ; 
#define  ISCSI_STATE_FAILED 132 
#define  ISCSI_STATE_IN_RECOVERY 131 
 int ISCSI_STATE_LOGGED_IN ; 
#define  ISCSI_STATE_LOGGING_OUT 130 
#define  ISCSI_STATE_RECOVERY_FAILED 129 
#define  ISCSI_STATE_TERMINATE 128 
 int /*<<< orphan*/  ISCSI_SUSPEND_BIT ; 
 int /*<<< orphan*/  ISCSI_TASK_REQUEUE_SCSIQ ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 int /*<<< orphan*/  SYSTEM_RUNNING ; 
 struct iscsi_task* FUNC1 (struct iscsi_conn*,struct scsi_cmnd*) ; 
 scalar_t__ FUNC2 (struct iscsi_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iscsi_conn*) ; 
 int FUNC5 (struct iscsi_task*) ; 
 int FUNC6 (struct iscsi_cls_session*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct iscsi_host* FUNC11 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct iscsi_cls_session* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  system_state ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int FUNC19(struct Scsi_Host *host, struct scsi_cmnd *sc)
{
	struct iscsi_cls_session *cls_session;
	struct iscsi_host *ihost;
	int reason = 0;
	struct iscsi_session *session;
	struct iscsi_conn *conn;
	struct iscsi_task *task = NULL;

	sc->result = 0;
	sc->SCp.ptr = NULL;

	ihost = FUNC11(host);

	cls_session = FUNC14(FUNC10(sc->device));
	session = cls_session->dd_data;
	FUNC12(&session->frwd_lock);

	reason = FUNC6(cls_session);
	if (reason) {
		sc->result = reason;
		goto fault;
	}

	if (session->state != ISCSI_STATE_LOGGED_IN) {
		/*
		 * to handle the race between when we set the recovery state
		 * and block the session we requeue here (commands could
		 * be entering our queuecommand while a block is starting
		 * up because the block code is not locked)
		 */
		switch (session->state) {
		case ISCSI_STATE_FAILED:
			/*
			 * cmds should fail during shutdown, if the session
			 * state is bad, allowing completion to happen
			 */
			if (FUNC18(system_state != SYSTEM_RUNNING)) {
				reason = FAILURE_SESSION_FAILED;
				sc->result = DID_NO_CONNECT << 16;
				break;
			}
			/* fall through */
		case ISCSI_STATE_IN_RECOVERY:
			reason = FAILURE_SESSION_IN_RECOVERY;
			sc->result = DID_IMM_RETRY << 16;
			break;
		case ISCSI_STATE_LOGGING_OUT:
			reason = FAILURE_SESSION_LOGGING_OUT;
			sc->result = DID_IMM_RETRY << 16;
			break;
		case ISCSI_STATE_RECOVERY_FAILED:
			reason = FAILURE_SESSION_RECOVERY_TIMEOUT;
			sc->result = DID_TRANSPORT_FAILFAST << 16;
			break;
		case ISCSI_STATE_TERMINATE:
			reason = FAILURE_SESSION_TERMINATE;
			sc->result = DID_NO_CONNECT << 16;
			break;
		default:
			reason = FAILURE_SESSION_FREED;
			sc->result = DID_NO_CONNECT << 16;
		}
		goto fault;
	}

	conn = session->leadconn;
	if (!conn) {
		reason = FAILURE_SESSION_FREED;
		sc->result = DID_NO_CONNECT << 16;
		goto fault;
	}

	if (FUNC17(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
		reason = FAILURE_SESSION_IN_RECOVERY;
		sc->result = DID_REQUEUE << 16;
		goto fault;
	}

	if (FUNC2(conn)) {
		reason = FAILURE_WINDOW_CLOSED;
		goto reject;
	}

	task = FUNC1(conn, sc);
	if (!task) {
		reason = FAILURE_OOM;
		goto reject;
	}

	if (!ihost->workq) {
		reason = FUNC5(task);
		if (reason) {
			if (reason == -ENOMEM ||  reason == -EACCES) {
				reason = FAILURE_OOM;
				goto prepd_reject;
			} else {
				sc->result = DID_ABORT << 16;
				goto prepd_fault;
			}
		}
		if (session->tt->xmit_task(task)) {
			session->cmdsn--;
			reason = FAILURE_SESSION_NOT_READY;
			goto prepd_reject;
		}
	} else {
		FUNC12(&conn->taskqueuelock);
		FUNC7(&task->running, &conn->cmdqueue);
		FUNC13(&conn->taskqueuelock);
		FUNC4(conn);
	}

	session->queued_cmdsn++;
	FUNC13(&session->frwd_lock);
	return 0;

prepd_reject:
	FUNC12(&session->back_lock);
	FUNC3(task, ISCSI_TASK_REQUEUE_SCSIQ);
	FUNC13(&session->back_lock);
reject:
	FUNC13(&session->frwd_lock);
	FUNC0(session, "cmd 0x%x rejected (%d)\n",
			  sc->cmnd[0], reason);
	return SCSI_MLQUEUE_TARGET_BUSY;

prepd_fault:
	FUNC12(&session->back_lock);
	FUNC3(task, ISCSI_TASK_REQUEUE_SCSIQ);
	FUNC13(&session->back_lock);
fault:
	FUNC13(&session->frwd_lock);
	FUNC0(session, "iscsi: cmd 0x%x is not queued (%d)\n",
			  sc->cmnd[0], reason);
	FUNC9(sc, FUNC8(sc));
	sc->scsi_done(sc);
	return 0;
}