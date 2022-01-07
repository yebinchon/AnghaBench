
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_fc_tgtport {int fc_target_port; TYPE_1__* ops; int dev; } ;
struct nvmet_fc_ls_iod {int lsreq; int rspdma; } ;
struct TYPE_2__ {int (* xmt_ls_rsp ) (int *,int ) ;} ;


 int DMA_TO_DEVICE ;
 int NVME_FC_MAX_LS_BUFFER_SIZE ;
 int fc_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int nvmet_fc_xmt_ls_rsp_done (int ) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static void
nvmet_fc_xmt_ls_rsp(struct nvmet_fc_tgtport *tgtport,
    struct nvmet_fc_ls_iod *iod)
{
 int ret;

 fc_dma_sync_single_for_device(tgtport->dev, iod->rspdma,
      NVME_FC_MAX_LS_BUFFER_SIZE, DMA_TO_DEVICE);

 ret = tgtport->ops->xmt_ls_rsp(&tgtport->fc_target_port, iod->lsreq);
 if (ret)
  nvmet_fc_xmt_ls_rsp_done(iod->lsreq);
}
