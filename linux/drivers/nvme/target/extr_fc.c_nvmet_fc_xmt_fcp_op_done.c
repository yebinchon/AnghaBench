
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_fcp_iod {int dummy; } ;
struct nvmefc_tgt_fcp_req {struct nvmet_fc_fcp_iod* nvmet_fc_private; } ;


 int nvmet_fc_fod_op_done (struct nvmet_fc_fcp_iod*) ;

__attribute__((used)) static void
nvmet_fc_xmt_fcp_op_done(struct nvmefc_tgt_fcp_req *fcpreq)
{
 struct nvmet_fc_fcp_iod *fod = fcpreq->nvmet_fc_private;

 nvmet_fc_fod_op_done(fod);
}
