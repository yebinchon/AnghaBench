
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_rport {int rport_lock; TYPE_1__* qedf; int free_sqes; } ;
struct qedf_ioreq {int xid; int refcount; int * sc_cmd; struct qedf_rport* fcport; } ;
struct TYPE_2__ {int dbg_ctx; } ;


 int QEDF_ERR (int *,char*,...) ;
 int QEDF_INFO (int *,int ,char*,int ,int ) ;
 int QEDF_LOG_ELS ;
 int QEDF_SCSI_CMD ;
 int atomic_inc (int *) ;
 int kref_put (int *,int ) ;
 struct qedf_ioreq* qedf_alloc_cmd (struct qedf_rport*,int ) ;
 int qedf_initiate_abts (struct qedf_ioreq*,int) ;
 scalar_t__ qedf_post_io_req (struct qedf_rport*,struct qedf_ioreq*) ;
 int qedf_release_cmd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool qedf_requeue_io_req(struct qedf_ioreq *orig_io_req)
{
 struct qedf_rport *fcport;
 struct qedf_ioreq *new_io_req;
 unsigned long flags;
 bool rc = 0;

 fcport = orig_io_req->fcport;
 if (!fcport) {
  QEDF_ERR(((void*)0), "fcport is NULL.\n");
  goto out;
 }

 if (!orig_io_req->sc_cmd) {
  QEDF_ERR(&(fcport->qedf->dbg_ctx), "sc_cmd is NULL for "
      "xid=0x%x.\n", orig_io_req->xid);
  goto out;
 }

 new_io_req = qedf_alloc_cmd(fcport, QEDF_SCSI_CMD);
 if (!new_io_req) {
  QEDF_ERR(&(fcport->qedf->dbg_ctx), "Could not allocate new "
      "io_req.\n");
  goto out;
 }

 new_io_req->sc_cmd = orig_io_req->sc_cmd;







 orig_io_req->sc_cmd = ((void*)0);
 kref_put(&orig_io_req->refcount, qedf_release_cmd);

 spin_lock_irqsave(&fcport->rport_lock, flags);


 if (qedf_post_io_req(fcport, new_io_req)) {
  QEDF_ERR(&(fcport->qedf->dbg_ctx), "Unable to post io_req\n");

  atomic_inc(&fcport->free_sqes);
 } else {
  QEDF_INFO(&(fcport->qedf->dbg_ctx), QEDF_LOG_ELS,
      "Reissued SCSI command from  orig_xid=0x%x on "
      "new_xid=0x%x.\n", orig_io_req->xid, new_io_req->xid);




  spin_unlock_irqrestore(&fcport->rport_lock, flags);
  qedf_initiate_abts(orig_io_req, 0);
  goto out;
 }

 spin_unlock_irqrestore(&fcport->rport_lock, flags);
out:
 return rc;
}
