
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvmet_fc_tgtport {int dummy; } ;
struct TYPE_3__ {int transfer_len; } ;
struct nvmet_fc_fcp_iod {int abort; int writedataactive; int queue; TYPE_1__ req; int offset; int flock; struct nvmet_fc_tgtport* tgtport; struct nvmefc_tgt_fcp_req* fcpreq; } ;
struct nvmefc_tgt_fcp_req {int op; int transferred_length; int transfer_length; int fcp_error; } ;






 int NVME_SC_INTERNAL ;
 int __nvmet_fc_fod_op_abort (struct nvmet_fc_fcp_iod*,int) ;
 int nvmet_fc_abort_op (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_free_fcp_iod (int ,struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_free_tgt_pgs (struct nvmet_fc_fcp_iod*) ;
 int nvmet_fc_transfer_fcp_data (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*,int const) ;
 int nvmet_fc_xmt_fcp_rsp (struct nvmet_fc_tgtport*,struct nvmet_fc_fcp_iod*) ;
 int nvmet_req_complete (TYPE_1__*,int ) ;
 int nvmet_req_execute (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
nvmet_fc_fod_op_done(struct nvmet_fc_fcp_iod *fod)
{
 struct nvmefc_tgt_fcp_req *fcpreq = fod->fcpreq;
 struct nvmet_fc_tgtport *tgtport = fod->tgtport;
 unsigned long flags;
 bool abort;

 spin_lock_irqsave(&fod->flock, flags);
 abort = fod->abort;
 fod->writedataactive = 0;
 spin_unlock_irqrestore(&fod->flock, flags);

 switch (fcpreq->op) {

 case 128:
  if (__nvmet_fc_fod_op_abort(fod, abort))
   return;
  if (fcpreq->fcp_error ||
      fcpreq->transferred_length != fcpreq->transfer_length) {
   spin_lock(&fod->flock);
   fod->abort = 1;
   spin_unlock(&fod->flock);

   nvmet_req_complete(&fod->req, NVME_SC_INTERNAL);
   return;
  }

  fod->offset += fcpreq->transferred_length;
  if (fod->offset != fod->req.transfer_len) {
   spin_lock_irqsave(&fod->flock, flags);
   fod->writedataactive = 1;
   spin_unlock_irqrestore(&fod->flock, flags);


   nvmet_fc_transfer_fcp_data(tgtport, fod,
      128);
   return;
  }


  nvmet_req_execute(&fod->req);
  break;

 case 131:
 case 130:
  if (__nvmet_fc_fod_op_abort(fod, abort))
   return;
  if (fcpreq->fcp_error ||
      fcpreq->transferred_length != fcpreq->transfer_length) {
   nvmet_fc_abort_op(tgtport, fod);
   return;
  }



  if (fcpreq->op == 130) {

   nvmet_fc_free_tgt_pgs(fod);
   nvmet_fc_free_fcp_iod(fod->queue, fod);
   return;
  }

  fod->offset += fcpreq->transferred_length;
  if (fod->offset != fod->req.transfer_len) {

   nvmet_fc_transfer_fcp_data(tgtport, fod,
      131);
   return;
  }




  nvmet_fc_free_tgt_pgs(fod);

  nvmet_fc_xmt_fcp_rsp(tgtport, fod);

  break;

 case 129:
  if (__nvmet_fc_fod_op_abort(fod, abort))
   return;
  nvmet_fc_free_fcp_iod(fod->queue, fod);
  break;

 default:
  break;
 }
}
