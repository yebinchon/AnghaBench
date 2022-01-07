
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_fc_tgtport {struct nvmet_fc_ls_iod* iod; int dev; } ;
struct nvmet_fc_ls_iod {int ls_list; struct nvmet_fc_ls_iod* rqstbuf; int rspdma; } ;


 int DMA_TO_DEVICE ;
 int NVMET_LS_CTX_COUNT ;
 int NVME_FC_MAX_LS_BUFFER_SIZE ;
 int fc_dma_unmap_single (int ,int ,int ,int ) ;
 int kfree (struct nvmet_fc_ls_iod*) ;
 int list_del (int *) ;

__attribute__((used)) static void
nvmet_fc_free_ls_iodlist(struct nvmet_fc_tgtport *tgtport)
{
 struct nvmet_fc_ls_iod *iod = tgtport->iod;
 int i;

 for (i = 0; i < NVMET_LS_CTX_COUNT; iod++, i++) {
  fc_dma_unmap_single(tgtport->dev,
    iod->rspdma, NVME_FC_MAX_LS_BUFFER_SIZE,
    DMA_TO_DEVICE);
  kfree(iod->rqstbuf);
  list_del(&iod->ls_list);
 }
 kfree(tgtport->iod);
}
