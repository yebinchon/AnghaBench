
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_tgtport {int fc_target_port; TYPE_1__* ops; } ;
struct nvmet_fc_fcp_iod {int queue; int aborted; struct nvmefc_tgt_fcp_req* fcpreq; } ;
struct nvmefc_tgt_fcp_req {int dummy; } ;
struct TYPE_2__ {int (* fcp_abort ) (int *,struct nvmefc_tgt_fcp_req*) ;} ;


 int nvmet_fc_free_fcp_iod (int ,struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_free_tgt_pgs (struct nvmet_fc_fcp_iod*) ;
 int stub1 (int *,struct nvmefc_tgt_fcp_req*) ;

__attribute__((used)) static void
nvmet_fc_abort_op(struct nvmet_fc_tgtport *tgtport,
    struct nvmet_fc_fcp_iod *fod)
{
 struct nvmefc_tgt_fcp_req *fcpreq = fod->fcpreq;


 nvmet_fc_free_tgt_pgs(fod);






 if (!fod->aborted)
  tgtport->ops->fcp_abort(&tgtport->fc_target_port, fcpreq);

 nvmet_fc_free_fcp_iod(fod->queue, fod);
}
