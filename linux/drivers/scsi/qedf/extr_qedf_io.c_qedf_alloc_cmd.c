
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u8 ;
typedef size_t u16 ;
struct qedf_rport {int free_sqes; int num_active_ios; struct qedf_ctx* qedf; } ;
struct qedf_ioreq {int alloc; size_t xid; int lun; int rx_id; scalar_t__ tx_buf_off; scalar_t__ rx_buf_off; scalar_t__ tm_flags; int cmd_type; int refcount; struct io_bdt* bd_tbl; int state; int * sc_cmd; struct qedf_rport* fcport; struct qedf_cmd_mgr* cmd_mgr; int flags; } ;
struct qedf_ctx {int alloc_failures; int dbg_ctx; struct qedf_cmd_mgr* cmd_mgr; } ;
struct qedf_cmd_mgr {size_t idx; struct io_bdt** io_bdt_pool; int free_list_cnt; int lock; struct qedf_ioreq* cmds; } ;
struct io_bdt {struct qedf_ioreq* io_req; } ;


 int FCOE_PARAMS_NUM_TASKS ;
 scalar_t__ GBL_RSVD_TASKS ;
 scalar_t__ NUM_RW_TASKS_PER_CONNECTION ;
 int QEDFC_CMD_ST_IO_ACTIVE ;
 int QEDF_CMD_DIRTY ;
 int QEDF_ERR (int *,char*,size_t) ;
 int QEDF_INFO (int *,int ,char*,scalar_t__) ;
 int QEDF_LOG_IO ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int kref_init (int *) ;
 int kref_put (int *,int ) ;
 int qedf_release_cmd ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

struct qedf_ioreq *qedf_alloc_cmd(struct qedf_rport *fcport, u8 cmd_type)
{
 struct qedf_ctx *qedf = fcport->qedf;
 struct qedf_cmd_mgr *cmd_mgr = qedf->cmd_mgr;
 struct qedf_ioreq *io_req = ((void*)0);
 struct io_bdt *bd_tbl;
 u16 xid;
 uint32_t free_sqes;
 int i;
 unsigned long flags;

 free_sqes = atomic_read(&fcport->free_sqes);

 if (!free_sqes) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Returning NULL, free_sqes=%d.\n ",
      free_sqes);
  goto out_failed;
 }


 if ((atomic_read(&fcport->num_active_ios) >=
     NUM_RW_TASKS_PER_CONNECTION)) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Returning NULL, num_active_ios=%d.\n",
      atomic_read(&fcport->num_active_ios));
  goto out_failed;
 }


 if (atomic_read(&cmd_mgr->free_list_cnt) <= GBL_RSVD_TASKS) {
  QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO,
      "Returning NULL, free_list_cnt=%d.\n",
      atomic_read(&cmd_mgr->free_list_cnt));
  goto out_failed;
 }

 spin_lock_irqsave(&cmd_mgr->lock, flags);
 for (i = 0; i < FCOE_PARAMS_NUM_TASKS; i++) {
  io_req = &cmd_mgr->cmds[cmd_mgr->idx];
  cmd_mgr->idx++;
  if (cmd_mgr->idx == FCOE_PARAMS_NUM_TASKS)
   cmd_mgr->idx = 0;


  if (!io_req->alloc)
   break;
 }

 if (i == FCOE_PARAMS_NUM_TASKS) {
  spin_unlock_irqrestore(&cmd_mgr->lock, flags);
  goto out_failed;
 }

 if (test_bit(QEDF_CMD_DIRTY, &io_req->flags))
  QEDF_ERR(&qedf->dbg_ctx,
    "io_req found to be dirty ox_id = 0x%x.\n",
    io_req->xid);


 io_req->flags = 0;
 io_req->alloc = 1;
 spin_unlock_irqrestore(&cmd_mgr->lock, flags);

 atomic_inc(&fcport->num_active_ios);
 atomic_dec(&fcport->free_sqes);
 xid = io_req->xid;
 atomic_dec(&cmd_mgr->free_list_cnt);

 io_req->cmd_mgr = cmd_mgr;
 io_req->fcport = fcport;


 io_req->sc_cmd = ((void*)0);
 io_req->lun = -1;


 kref_init(&io_req->refcount);
 atomic_set(&io_req->state, QEDFC_CMD_ST_IO_ACTIVE);



 bd_tbl = io_req->bd_tbl = cmd_mgr->io_bdt_pool[xid];
 if (bd_tbl == ((void*)0)) {
  QEDF_ERR(&(qedf->dbg_ctx), "bd_tbl is NULL, xid=%x.\n", xid);
  kref_put(&io_req->refcount, qedf_release_cmd);
  goto out_failed;
 }
 bd_tbl->io_req = io_req;
 io_req->cmd_type = cmd_type;
 io_req->tm_flags = 0;


 io_req->rx_buf_off = 0;
 io_req->tx_buf_off = 0;
 io_req->rx_id = 0xffff;

 return io_req;

out_failed:

 qedf->alloc_failures++;
 return ((void*)0);
}
