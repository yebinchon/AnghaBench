
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int dummy; } ;
struct nvmet_fc_fcp_iod {int req; struct nvmet_fc_tgtport* tgtport; struct nvmefc_tgt_fcp_req* fcpreq; } ;
struct nvmefc_tgt_fcp_req {scalar_t__ op; } ;


 scalar_t__ NVMET_FCOP_WRITEDATA ;
 int NVME_SC_INTERNAL ;
 int nvmet_fc_abort_op (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int nvmet_req_complete (int *,int ) ;

__attribute__((used)) static inline bool
__nvmet_fc_fod_op_abort(struct nvmet_fc_fcp_iod *fod, bool abort)
{
 struct nvmefc_tgt_fcp_req *fcpreq = fod->fcpreq;
 struct nvmet_fc_tgtport *tgtport = fod->tgtport;


 if (abort) {
  if (fcpreq->op == NVMET_FCOP_WRITEDATA) {
   nvmet_req_complete(&fod->req, NVME_SC_INTERNAL);
   return 1;
  }

  nvmet_fc_abort_op(tgtport, fod);
  return 1;
 }

 return 0;
}
