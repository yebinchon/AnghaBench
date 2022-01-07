
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_target_port {int dummy; } ;
struct nvmefc_tgt_fcp_req {int dummy; } ;
struct fcloop_fcpreq {int aborted; int status; int reqlock; } ;


 int NVME_SC_INTERNAL ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 struct fcloop_fcpreq* tgt_fcp_req_to_fcpreq (struct nvmefc_tgt_fcp_req*) ;

__attribute__((used)) static void
fcloop_tgt_fcp_abort(struct nvmet_fc_target_port *tgtport,
   struct nvmefc_tgt_fcp_req *tgt_fcpreq)
{
 struct fcloop_fcpreq *tfcp_req = tgt_fcp_req_to_fcpreq(tgt_fcpreq);






 spin_lock_irq(&tfcp_req->reqlock);
 tfcp_req->aborted = 1;
 spin_unlock_irq(&tfcp_req->reqlock);

 tfcp_req->status = NVME_SC_INTERNAL;






}
