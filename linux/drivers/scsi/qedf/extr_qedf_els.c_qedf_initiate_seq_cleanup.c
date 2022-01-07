
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct qedf_rport {int rport_lock; struct fcoe_wqe* sq; TYPE_1__* qedf; } ;
struct qedf_ioreq {TYPE_2__* task_params; struct qedf_els_cb_arg* cb_arg; int cmd_type; int refcount; int xid; struct qedf_rport* fcport; } ;
struct qedf_els_cb_arg {int r_ctl; int offset; } ;
struct fcoe_wqe {int dummy; } ;
struct TYPE_4__ {struct fcoe_wqe* sqe; } ;
struct TYPE_3__ {int dbg_ctx; } ;


 int GFP_NOIO ;
 int HZ ;
 int QEDF_CLEANUP_TIMEOUT ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_INFO (int *,int ,char*,int ,int ) ;
 int QEDF_LOG_ELS ;
 int QEDF_SEQ_CLEANUP ;
 int init_initiator_sequence_recovery_fcoe_task (TYPE_2__*,int ) ;
 int kref_get (int *) ;
 struct qedf_els_cb_arg* kzalloc (int,int ) ;
 int memset (struct fcoe_wqe*,int ,int) ;
 int qedf_cmd_timer_set (TYPE_1__*,struct qedf_ioreq*,int) ;
 size_t qedf_get_sqe_idx (struct qedf_rport*) ;
 int qedf_ring_doorbell (struct qedf_rport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qedf_initiate_seq_cleanup(struct qedf_ioreq *orig_io_req,
 u32 offset, u8 r_ctl)
{
 struct qedf_rport *fcport;
 unsigned long flags;
 struct qedf_els_cb_arg *cb_arg;
 struct fcoe_wqe *sqe;
 u16 sqe_idx;

 fcport = orig_io_req->fcport;

 QEDF_INFO(&(fcport->qedf->dbg_ctx), QEDF_LOG_ELS,
     "Doing sequence cleanup for xid=0x%x offset=%u.\n",
     orig_io_req->xid, offset);

 cb_arg = kzalloc(sizeof(struct qedf_els_cb_arg), GFP_NOIO);
 if (!cb_arg) {
  QEDF_ERR(&(fcport->qedf->dbg_ctx), "Unable to allocate cb_arg "
     "for sequence cleanup\n");
  return;
 }


 kref_get(&orig_io_req->refcount);

 orig_io_req->cmd_type = QEDF_SEQ_CLEANUP;
 cb_arg->offset = offset;
 cb_arg->r_ctl = r_ctl;
 orig_io_req->cb_arg = cb_arg;

 qedf_cmd_timer_set(fcport->qedf, orig_io_req,
     QEDF_CLEANUP_TIMEOUT * HZ);

 spin_lock_irqsave(&fcport->rport_lock, flags);

 sqe_idx = qedf_get_sqe_idx(fcport);
 sqe = &fcport->sq[sqe_idx];
 memset(sqe, 0, sizeof(struct fcoe_wqe));
 orig_io_req->task_params->sqe = sqe;

 init_initiator_sequence_recovery_fcoe_task(orig_io_req->task_params,
         offset);
 qedf_ring_doorbell(fcport);

 spin_unlock_irqrestore(&fcport->rport_lock, flags);
}
