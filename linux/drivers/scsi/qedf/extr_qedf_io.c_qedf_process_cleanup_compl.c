
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedf_ioreq {int cleanup_done; int flags; int xid; } ;
struct qedf_ctx {int dbg_ctx; } ;
struct fcoe_cqe {int dummy; } ;


 int QEDF_CMD_IN_CLEANUP ;
 int QEDF_INFO (int *,int ,char*,int ) ;
 int QEDF_LOG_IO ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;

void qedf_process_cleanup_compl(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
 struct qedf_ioreq *io_req)
{
 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_IO, "Entered xid = 0x%x\n",
     io_req->xid);

 clear_bit(QEDF_CMD_IN_CLEANUP, &io_req->flags);


 complete(&io_req->cleanup_done);
}
