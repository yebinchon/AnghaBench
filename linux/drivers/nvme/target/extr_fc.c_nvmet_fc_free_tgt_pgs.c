
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_fcp_iod {scalar_t__ io_dir; scalar_t__ data_sg_cnt; int * data_sg; TYPE_1__* tgtport; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 scalar_t__ NVMET_FCP_WRITE ;
 int fc_dma_unmap_sg (int ,int *,scalar_t__,int ) ;
 int sgl_free (int *) ;

__attribute__((used)) static void
nvmet_fc_free_tgt_pgs(struct nvmet_fc_fcp_iod *fod)
{
 if (!fod->data_sg || !fod->data_sg_cnt)
  return;

 fc_dma_unmap_sg(fod->tgtport->dev, fod->data_sg, fod->data_sg_cnt,
    ((fod->io_dir == NVMET_FCP_WRITE) ?
     DMA_FROM_DEVICE : DMA_TO_DEVICE));
 sgl_free(fod->data_sg);
 fod->data_sg = ((void*)0);
 fod->data_sg_cnt = 0;
}
