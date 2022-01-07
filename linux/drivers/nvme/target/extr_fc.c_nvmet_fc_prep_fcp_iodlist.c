
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {int dev; } ;
struct nvmet_fc_tgt_queue {int sqsize; int fod_list; struct nvmet_fc_fcp_iod* fod; } ;
struct nvmet_fc_fcp_iod {int active; int abort; int aborted; long rspdma; int fcp_list; int rspiubuf; int flock; int * fcpreq; struct nvmet_fc_tgt_queue* queue; struct nvmet_fc_tgtport* tgtport; int defer_work; } ;


 int DMA_TO_DEVICE ;
 int INIT_WORK (int *,int ) ;
 long fc_dma_map_single (int ,int *,int,int ) ;
 scalar_t__ fc_dma_mapping_error (int ,long) ;
 int fc_dma_unmap_single (int ,long,int,int ) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int nvmet_fc_fcp_rqst_op_defer_work ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
nvmet_fc_prep_fcp_iodlist(struct nvmet_fc_tgtport *tgtport,
    struct nvmet_fc_tgt_queue *queue)
{
 struct nvmet_fc_fcp_iod *fod = queue->fod;
 int i;

 for (i = 0; i < queue->sqsize; fod++, i++) {
  INIT_WORK(&fod->defer_work, nvmet_fc_fcp_rqst_op_defer_work);
  fod->tgtport = tgtport;
  fod->queue = queue;
  fod->active = 0;
  fod->abort = 0;
  fod->aborted = 0;
  fod->fcpreq = ((void*)0);
  list_add_tail(&fod->fcp_list, &queue->fod_list);
  spin_lock_init(&fod->flock);

  fod->rspdma = fc_dma_map_single(tgtport->dev, &fod->rspiubuf,
     sizeof(fod->rspiubuf), DMA_TO_DEVICE);
  if (fc_dma_mapping_error(tgtport->dev, fod->rspdma)) {
   list_del(&fod->fcp_list);
   for (fod--, i--; i >= 0; fod--, i--) {
    fc_dma_unmap_single(tgtport->dev, fod->rspdma,
      sizeof(fod->rspiubuf),
      DMA_TO_DEVICE);
    fod->rspdma = 0L;
    list_del(&fod->fcp_list);
   }

   return;
  }
 }
}
