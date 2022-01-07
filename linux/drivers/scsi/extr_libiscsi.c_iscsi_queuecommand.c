
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptr; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;int * cmnd; int device; TYPE_1__ SCp; } ;
struct iscsi_task {int running; } ;
struct iscsi_session {int state; int frwd_lock; int back_lock; int queued_cmdsn; int cmdsn; TYPE_2__* tt; struct iscsi_conn* leadconn; } ;
struct iscsi_host {int workq; } ;
struct iscsi_conn {int taskqueuelock; int cmdqueue; int suspend_tx; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_4__ {scalar_t__ (* xmit_task ) (struct iscsi_task*) ;} ;


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
 int ISCSI_DBG_SESSION (struct iscsi_session*,char*,int ,int) ;


 int ISCSI_STATE_LOGGED_IN ;



 int ISCSI_SUSPEND_BIT ;
 int ISCSI_TASK_REQUEUE_SCSIQ ;
 int SCSI_MLQUEUE_TARGET_BUSY ;
 int SYSTEM_RUNNING ;
 struct iscsi_task* iscsi_alloc_task (struct iscsi_conn*,struct scsi_cmnd*) ;
 scalar_t__ iscsi_check_cmdsn_window_closed (struct iscsi_conn*) ;
 int iscsi_complete_task (struct iscsi_task*,int ) ;
 int iscsi_conn_queue_work (struct iscsi_conn*) ;
 int iscsi_prep_scsi_cmd_pdu (struct iscsi_task*) ;
 int iscsi_session_chkready (struct iscsi_cls_session*) ;
 int list_add_tail (int *,int *) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int scsi_target (int ) ;
 struct iscsi_host* shost_priv (struct Scsi_Host*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct iscsi_cls_session* starget_to_session (int ) ;
 scalar_t__ stub1 (struct iscsi_task*) ;
 int stub2 (struct scsi_cmnd*) ;
 int system_state ;
 scalar_t__ test_bit (int ,int *) ;
 int unlikely (int) ;

int iscsi_queuecommand(struct Scsi_Host *host, struct scsi_cmnd *sc)
{
 struct iscsi_cls_session *cls_session;
 struct iscsi_host *ihost;
 int reason = 0;
 struct iscsi_session *session;
 struct iscsi_conn *conn;
 struct iscsi_task *task = ((void*)0);

 sc->result = 0;
 sc->SCp.ptr = ((void*)0);

 ihost = shost_priv(host);

 cls_session = starget_to_session(scsi_target(sc->device));
 session = cls_session->dd_data;
 spin_lock_bh(&session->frwd_lock);

 reason = iscsi_session_chkready(cls_session);
 if (reason) {
  sc->result = reason;
  goto fault;
 }

 if (session->state != ISCSI_STATE_LOGGED_IN) {






  switch (session->state) {
  case 132:




   if (unlikely(system_state != SYSTEM_RUNNING)) {
    reason = FAILURE_SESSION_FAILED;
    sc->result = DID_NO_CONNECT << 16;
    break;
   }

  case 131:
   reason = FAILURE_SESSION_IN_RECOVERY;
   sc->result = DID_IMM_RETRY << 16;
   break;
  case 130:
   reason = FAILURE_SESSION_LOGGING_OUT;
   sc->result = DID_IMM_RETRY << 16;
   break;
  case 129:
   reason = FAILURE_SESSION_RECOVERY_TIMEOUT;
   sc->result = DID_TRANSPORT_FAILFAST << 16;
   break;
  case 128:
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

 if (test_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx)) {
  reason = FAILURE_SESSION_IN_RECOVERY;
  sc->result = DID_REQUEUE << 16;
  goto fault;
 }

 if (iscsi_check_cmdsn_window_closed(conn)) {
  reason = FAILURE_WINDOW_CLOSED;
  goto reject;
 }

 task = iscsi_alloc_task(conn, sc);
 if (!task) {
  reason = FAILURE_OOM;
  goto reject;
 }

 if (!ihost->workq) {
  reason = iscsi_prep_scsi_cmd_pdu(task);
  if (reason) {
   if (reason == -ENOMEM || reason == -EACCES) {
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
  spin_lock_bh(&conn->taskqueuelock);
  list_add_tail(&task->running, &conn->cmdqueue);
  spin_unlock_bh(&conn->taskqueuelock);
  iscsi_conn_queue_work(conn);
 }

 session->queued_cmdsn++;
 spin_unlock_bh(&session->frwd_lock);
 return 0;

prepd_reject:
 spin_lock_bh(&session->back_lock);
 iscsi_complete_task(task, ISCSI_TASK_REQUEUE_SCSIQ);
 spin_unlock_bh(&session->back_lock);
reject:
 spin_unlock_bh(&session->frwd_lock);
 ISCSI_DBG_SESSION(session, "cmd 0x%x rejected (%d)\n",
     sc->cmnd[0], reason);
 return SCSI_MLQUEUE_TARGET_BUSY;

prepd_fault:
 spin_lock_bh(&session->back_lock);
 iscsi_complete_task(task, ISCSI_TASK_REQUEUE_SCSIQ);
 spin_unlock_bh(&session->back_lock);
fault:
 spin_unlock_bh(&session->frwd_lock);
 ISCSI_DBG_SESSION(session, "iscsi: cmd 0x%x is not queued (%d)\n",
     sc->cmnd[0], reason);
 scsi_set_resid(sc, scsi_bufflen(sc));
 sc->scsi_done(sc);
 return 0;
}
