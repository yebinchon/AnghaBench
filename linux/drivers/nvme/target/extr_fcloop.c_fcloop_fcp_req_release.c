
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {int dummy; } ;
struct nvmefc_tgt_fcp_req {int dummy; } ;
struct fcloop_fcpreq {int tio_done_work; } ;


 int schedule_work (int *) ;
 struct fcloop_fcpreq* tgt_fcp_req_to_fcpreq (struct nvmefc_tgt_fcp_req*) ;

__attribute__((used)) static void
fcloop_fcp_req_release(struct nvmet_fc_target_port *tgtport,
   struct nvmefc_tgt_fcp_req *tgt_fcpreq)
{
 struct fcloop_fcpreq *tfcp_req = tgt_fcp_req_to_fcpreq(tgt_fcpreq);

 schedule_work(&tfcp_req->tio_done_work);
}
