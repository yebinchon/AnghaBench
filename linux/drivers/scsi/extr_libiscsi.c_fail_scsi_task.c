
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {int result; } ;
struct iscsi_task {scalar_t__ state; struct scsi_cmnd* sc; struct iscsi_conn* conn; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_2__ {int back_lock; int queued_cmdsn; } ;


 int DID_TRANSPORT_DISRUPTED ;
 int ISCSI_TASK_ABRT_SESS_RECOV ;
 int ISCSI_TASK_ABRT_TMF ;
 int ISCSI_TASK_COMPLETED ;
 scalar_t__ ISCSI_TASK_PENDING ;
 int iscsi_complete_task (struct iscsi_task*,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void fail_scsi_task(struct iscsi_task *task, int err)
{
 struct iscsi_conn *conn = task->conn;
 struct scsi_cmnd *sc;
 int state;






 sc = task->sc;
 if (!sc)
  return;

 if (task->state == ISCSI_TASK_PENDING) {




  conn->session->queued_cmdsn--;

  state = ISCSI_TASK_COMPLETED;
 } else if (err == DID_TRANSPORT_DISRUPTED)
  state = ISCSI_TASK_ABRT_SESS_RECOV;
 else
  state = ISCSI_TASK_ABRT_TMF;

 sc->result = err << 16;
 scsi_set_resid(sc, scsi_bufflen(sc));


 spin_lock_bh(&conn->session->back_lock);
 iscsi_complete_task(task, state);
 spin_unlock_bh(&conn->session->back_lock);
}
