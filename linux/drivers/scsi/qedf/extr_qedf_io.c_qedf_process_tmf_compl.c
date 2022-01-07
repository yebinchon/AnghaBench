
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedf_ioreq {int tm_done; int * sc_cmd; int flags; } ;
struct qedf_ctx {int dummy; } ;
struct fcoe_cqe_rsp_info {int dummy; } ;
struct TYPE_2__ {struct fcoe_cqe_rsp_info rsp_info; } ;
struct fcoe_cqe {TYPE_1__ cqe_info; } ;


 int QEDF_CMD_OUTSTANDING ;
 int clear_bit (int ,int *) ;
 int complete (int *) ;
 int qedf_parse_fcp_rsp (struct qedf_ioreq*,struct fcoe_cqe_rsp_info*) ;

void qedf_process_tmf_compl(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
 struct qedf_ioreq *io_req)
{
 struct fcoe_cqe_rsp_info *fcp_rsp;

 clear_bit(QEDF_CMD_OUTSTANDING, &io_req->flags);

 fcp_rsp = &cqe->cqe_info.rsp_info;
 qedf_parse_fcp_rsp(io_req, fcp_rsp);

 io_req->sc_cmd = ((void*)0);
 complete(&io_req->tm_done);
}
