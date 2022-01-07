
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmefc_ls_req {scalar_t__ rsplen; scalar_t__ rqstlen; int rqstdma; } ;
struct nvmefc_ls_req_op {int req_queued; int lsreq_list; struct nvmefc_ls_req ls_req; struct nvme_fc_rport* rport; } ;
struct nvme_fc_rport {int dev; int lock; } ;


 int DMA_BIDIRECTIONAL ;
 int fc_dma_unmap_single (int ,int ,scalar_t__,int ) ;
 int list_del (int *) ;
 int nvme_fc_rport_put (struct nvme_fc_rport*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
__nvme_fc_finish_ls_req(struct nvmefc_ls_req_op *lsop)
{
 struct nvme_fc_rport *rport = lsop->rport;
 struct nvmefc_ls_req *lsreq = &lsop->ls_req;
 unsigned long flags;

 spin_lock_irqsave(&rport->lock, flags);

 if (!lsop->req_queued) {
  spin_unlock_irqrestore(&rport->lock, flags);
  return;
 }

 list_del(&lsop->lsreq_list);

 lsop->req_queued = 0;

 spin_unlock_irqrestore(&rport->lock, flags);

 fc_dma_unmap_single(rport->dev, lsreq->rqstdma,
      (lsreq->rqstlen + lsreq->rsplen),
      DMA_BIDIRECTIONAL);

 nvme_fc_rport_put(rport);
}
