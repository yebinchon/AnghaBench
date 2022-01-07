
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int resp_len; } ;
struct qedf_ioreq {int refcount; int * cb_arg; int (* cb_func ) (int *) ;TYPE_2__ mp_req; int timeout_work; int flags; int cmd_type; int xid; } ;
struct qedf_ctx {int dbg_ctx; } ;
struct fcoe_cqe_midpath_info {int data_placement_size; } ;
struct TYPE_3__ {struct fcoe_cqe_midpath_info midpath_info; } ;
struct fcoe_cqe {TYPE_1__ cqe_info; } ;


 int QEDF_CMD_OUTSTANDING ;
 int QEDF_INFO (int *,int ,char*,int ,int ) ;
 int QEDF_LOG_ELS ;
 int cancel_delayed_work (int *) ;
 int clear_bit (int ,int *) ;
 int kref_put (int *,int ) ;
 int qedf_release_cmd ;
 int stub1 (int *) ;

void qedf_process_els_compl(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
 struct qedf_ioreq *els_req)
{
 struct fcoe_cqe_midpath_info *mp_info;

 QEDF_INFO(&(qedf->dbg_ctx), QEDF_LOG_ELS, "Entered with xid = 0x%x"
     " cmd_type = %d.\n", els_req->xid, els_req->cmd_type);

 clear_bit(QEDF_CMD_OUTSTANDING, &els_req->flags);


 cancel_delayed_work(&els_req->timeout_work);


 mp_info = &cqe->cqe_info.midpath_info;
 els_req->mp_req.resp_len = mp_info->data_placement_size;


 if ((els_req->cb_func) && (els_req->cb_arg)) {
  els_req->cb_func(els_req->cb_arg);
  els_req->cb_arg = ((void*)0);
 }

 kref_put(&els_req->refcount, qedf_release_cmd);
}
