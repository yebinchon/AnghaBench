
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qedf_rport {int lun_reset_lun; int flags; int num_active_ios; TYPE_4__* rport; TYPE_3__* rdata; int ios_to_queue; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int lun; int cmd_type; TYPE_1__* sc_cmd; int flags; int xid; int refcount; struct qedf_rport* fcport; int abts_done; int timeout_work; int rrq_work; int state; scalar_t__ alloc; } ;
struct qedf_ctx {int flush_mutex; int dbg_ctx; struct qedf_cmd_mgr* cmd_mgr; } ;
struct qedf_cmd_mgr {struct qedf_ioreq* cmds; int lock; } ;
struct TYPE_8__ {int scsi_target_id; } ;
struct TYPE_6__ {int port_id; } ;
struct TYPE_7__ {TYPE_2__ ids; } ;
struct TYPE_5__ {int device; } ;


 int FCOE_PARAMS_NUM_TASKS ;
 scalar_t__ QEDFC_CMD_ST_RRQ_WAIT ;
 int QEDF_ABTS ;
 int QEDF_CMD_DIRTY ;
 int QEDF_CMD_IN_ABORT ;
 int QEDF_CMD_OUTSTANDING ;
 int QEDF_ELS ;
 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,...) ;
 int QEDF_LOG_IO ;
 int QEDF_RPORT_IN_LUN_RESET ;
 int QEDF_RPORT_IN_TARGET_RESET ;
 int QEDF_RPORT_SESSION_READY ;
 int QEDF_RPORT_UPLOADING_CONNECTION ;
 int QEDF_SCSI_CMD ;
 int WARN_ON (int) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int kref_get_unless_zero (int *) ;
 int kref_put (int *,int ) ;
 int kref_read (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qedf_flush_els_req (struct qedf_ctx*,struct qedf_ioreq*) ;
 int qedf_initiate_cleanup (struct qedf_ioreq*,int) ;
 int qedf_release_cmd ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void qedf_flush_active_ios(struct qedf_rport *fcport, int lun)
{
 struct qedf_ioreq *io_req;
 struct qedf_ctx *qedf;
 struct qedf_cmd_mgr *cmd_mgr;
 int i, rc;
 unsigned long flags;
 int flush_cnt = 0;
 int wait_cnt = 100;
 int refcount = 0;

 if (!fcport) {
  QEDF_ERR(((void*)0), "fcport is NULL\n");
  return;
 }


 if (!test_bit(QEDF_RPORT_SESSION_READY, &fcport->flags)) {
  QEDF_ERR(((void*)0), "fcport is no longer offloaded.\n");
  return;
 }

 qedf = fcport->qedf;

 if (!qedf) {
  QEDF_ERR(((void*)0), "qedf is NULL.\n");
  return;
 }


 if (test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags) &&
     (lun == -1)) {
  while (atomic_read(&fcport->ios_to_queue)) {
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
      "Waiting for %d I/Os to be queued\n",
      atomic_read(&fcport->ios_to_queue));
   if (wait_cnt == 0) {
    QEDF_ERR(((void*)0),
      "%d IOs request could not be queued\n",
      atomic_read(&fcport->ios_to_queue));
   }
   msleep(20);
   wait_cnt--;
  }
 }

 cmd_mgr = qedf->cmd_mgr;

 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
    "Flush active i/o's num=0x%x fcport=0x%p port_id=0x%06x scsi_id=%d.\n",
    atomic_read(&fcport->num_active_ios), fcport,
    fcport->rdata->ids.port_id, fcport->rport->scsi_target_id);
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO, "Locking flush mutex.\n");

 mutex_lock(&qedf->flush_mutex);
 if (lun == -1) {
  set_bit(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags);
 } else {
  set_bit(QEDF_RPORT_IN_LUN_RESET, &fcport->flags);
  fcport->lun_reset_lun = lun;
 }

 for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
  io_req = &cmd_mgr->cmds[i];

  if (!io_req)
   continue;
  if (!io_req->fcport)
   continue;

  spin_lock_irqsave(&cmd_mgr->lock, flags);

  if (io_req->alloc) {
   if (!test_bit(QEDF_CMD_OUTSTANDING, &io_req->flags)) {
    if (io_req->cmd_type == QEDF_SCSI_CMD)
     QEDF_ERR(&qedf->dbg_ctx,
       "Allocated but not queued, xid=0x%x\n",
       io_req->xid);
   }
   spin_unlock_irqrestore(&cmd_mgr->lock, flags);
  } else {
   spin_unlock_irqrestore(&cmd_mgr->lock, flags);
   continue;
  }

  if (io_req->fcport != fcport)
   continue;






  if (!test_bit(QEDF_CMD_OUTSTANDING, &io_req->flags)) {
   refcount = kref_read(&io_req->refcount);
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
      "Not outstanding, xid=0x%x, cmd_type=%d refcount=%d.\n",
      io_req->xid, io_req->cmd_type, refcount);



   if (atomic_read(&io_req->state) ==
       QEDFC_CMD_ST_RRQ_WAIT) {
    if (cancel_delayed_work_sync
        (&io_req->rrq_work)) {
     QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
        "Putting reference for pending RRQ work xid=0x%x.\n",
        io_req->xid);

     kref_put(&io_req->refcount,
       qedf_release_cmd);
    }
   }
   continue;
  }


  if (io_req->cmd_type == QEDF_ELS &&
      lun == -1) {
   rc = kref_get_unless_zero(&io_req->refcount);
   if (!rc) {
    QEDF_ERR(&(qedf->dbg_ctx),
        "Could not get kref for ELS io_req=0x%p xid=0x%x.\n",
        io_req, io_req->xid);
    continue;
   }
   flush_cnt++;
   qedf_flush_els_req(qedf, io_req);




   goto free_cmd;
  }

  if (io_req->cmd_type == QEDF_ABTS) {

   rc = kref_get_unless_zero(&io_req->refcount);
   if (!rc) {
    QEDF_ERR(&(qedf->dbg_ctx),
        "Could not get kref for abort io_req=0x%p xid=0x%x.\n",
        io_req, io_req->xid);
    continue;
   }
   if (lun != -1 && io_req->lun != lun)
    goto free_cmd;

   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
       "Flushing abort xid=0x%x.\n", io_req->xid);

   if (cancel_delayed_work_sync(&io_req->rrq_work)) {
    QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
       "Putting ref for cancelled RRQ work xid=0x%x.\n",
       io_req->xid);
    kref_put(&io_req->refcount, qedf_release_cmd);
   }

   if (cancel_delayed_work_sync(&io_req->timeout_work)) {
    QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
       "Putting ref for cancelled tmo work xid=0x%x.\n",
       io_req->xid);
    qedf_initiate_cleanup(io_req, 1);



    complete(&io_req->abts_done);
    clear_bit(QEDF_CMD_IN_ABORT, &io_req->flags);

    kref_put(&io_req->refcount, qedf_release_cmd);
   }
   flush_cnt++;
   goto free_cmd;
  }

  if (!io_req->sc_cmd)
   continue;
  if (!io_req->sc_cmd->device) {
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
      "Device backpointer NULL for sc_cmd=%p.\n",
      io_req->sc_cmd);

   io_req->sc_cmd = ((void*)0);
   qedf_initiate_cleanup(io_req, 0);
   kref_put(&io_req->refcount, qedf_release_cmd);
   continue;
  }
  if (lun > -1) {
   if (io_req->lun != lun)
    continue;
  }





  rc = kref_get_unless_zero(&io_req->refcount);
  if (!rc) {
   QEDF_ERR(&(qedf->dbg_ctx), "Could not get kref for "
       "io_req=0x%p xid=0x%x\n", io_req, io_req->xid);
   continue;
  }

  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Cleanup xid=0x%x.\n", io_req->xid);
  flush_cnt++;


  qedf_initiate_cleanup(io_req, 1);

free_cmd:
  kref_put(&io_req->refcount, qedf_release_cmd);
 }

 wait_cnt = 60;
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
    "Flushed 0x%x I/Os, active=0x%x.\n",
    flush_cnt, atomic_read(&fcport->num_active_ios));

 if (test_bit(QEDF_RPORT_UPLOADING_CONNECTION, &fcport->flags) &&
     (lun == -1)) {
  while (atomic_read(&fcport->num_active_ios)) {
   QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO,
      "Flushed 0x%x I/Os, active=0x%x cnt=%d.\n",
      flush_cnt,
      atomic_read(&fcport->num_active_ios),
      wait_cnt);
   if (wait_cnt == 0) {
    QEDF_ERR(&qedf->dbg_ctx,
      "Flushed %d I/Os, active=%d.\n",
      flush_cnt,
      atomic_read(&fcport->num_active_ios));
    for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
     io_req = &cmd_mgr->cmds[i];
     if (io_req->fcport &&
         io_req->fcport == fcport) {
      refcount =
      kref_read(&io_req->refcount);
      set_bit(QEDF_CMD_DIRTY,
       &io_req->flags);
      QEDF_ERR(&qedf->dbg_ctx,
        "Outstanding io_req =%p xid=0x%x flags=0x%lx, sc_cmd=%p refcount=%d cmd_type=%d.\n",
        io_req, io_req->xid,
        io_req->flags,
        io_req->sc_cmd,
        refcount,
        io_req->cmd_type);
     }
    }
    WARN_ON(1);
    break;
   }
   msleep(500);
   wait_cnt--;
  }
 }

 clear_bit(QEDF_RPORT_IN_LUN_RESET, &fcport->flags);
 clear_bit(QEDF_RPORT_IN_TARGET_RESET, &fcport->flags);
 QEDF_INFO(&qedf->dbg_ctx, QEDF_LOG_IO, "Unlocking flush mutex.\n");
 mutex_unlock(&qedf->flush_mutex);
}
