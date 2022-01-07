
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {int sc_data_direction; } ;
struct qla_hw_data {int ctx_mempool; int gbl_dsd_avail; int gbl_dsd_inuse; int gbl_dsd_list; int fcp_cmnd_dma_pool; int dl_dma_pool; TYPE_2__* pdev; } ;
struct ct6_dsd {scalar_t__ dsd_use_cnt; int dsd_list; int fcp_cmnd_dma; struct crc_context* fcp_cmnd; } ;
struct crc_context {int crc_ctx_dma; } ;
struct TYPE_10__ {struct ct6_dsd* ct6_ctx; struct crc_context* crc_ctx; } ;
struct TYPE_11__ {TYPE_3__ scmd; } ;
struct TYPE_12__ {int flags; TYPE_4__ u; TYPE_1__* vha; } ;
typedef TYPE_5__ srb_t ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;


 struct scsi_cmnd* GET_CMD_SP (TYPE_5__*) ;
 int SRB_CRC_CTX_DMA_VALID ;
 int SRB_CRC_CTX_DSD_VALID ;
 int SRB_CRC_PROT_DMA_VALID ;
 int SRB_DMA_VALID ;
 int SRB_FCP_CMND_DMA_VALID ;
 int dma_pool_free (int ,struct crc_context*,int ) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int list_splice (int *,int *) ;
 int mempool_free (struct ct6_dsd*,int ) ;
 int qla2x00_clean_dsd_pool (struct qla_hw_data*,struct crc_context*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_prot_sg_count (struct scsi_cmnd*) ;
 int scsi_prot_sglist (struct scsi_cmnd*) ;

void qla2x00_sp_free_dma(srb_t *sp)
{
 struct qla_hw_data *ha = sp->vha->hw;
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);

 if (sp->flags & SRB_DMA_VALID) {
  scsi_dma_unmap(cmd);
  sp->flags &= ~SRB_DMA_VALID;
 }

 if (sp->flags & SRB_CRC_PROT_DMA_VALID) {
  dma_unmap_sg(&ha->pdev->dev, scsi_prot_sglist(cmd),
      scsi_prot_sg_count(cmd), cmd->sc_data_direction);
  sp->flags &= ~SRB_CRC_PROT_DMA_VALID;
 }

 if (sp->flags & SRB_CRC_CTX_DSD_VALID) {

  qla2x00_clean_dsd_pool(ha, sp->u.scmd.crc_ctx);
  sp->flags &= ~SRB_CRC_CTX_DSD_VALID;
 }

 if (sp->flags & SRB_CRC_CTX_DMA_VALID) {
  struct crc_context *ctx0 = sp->u.scmd.crc_ctx;

  dma_pool_free(ha->dl_dma_pool, ctx0, ctx0->crc_ctx_dma);
  sp->flags &= ~SRB_CRC_CTX_DMA_VALID;
 }

 if (sp->flags & SRB_FCP_CMND_DMA_VALID) {
  struct ct6_dsd *ctx1 = sp->u.scmd.ct6_ctx;

  dma_pool_free(ha->fcp_cmnd_dma_pool, ctx1->fcp_cmnd,
      ctx1->fcp_cmnd_dma);
  list_splice(&ctx1->dsd_list, &ha->gbl_dsd_list);
  ha->gbl_dsd_inuse -= ctx1->dsd_use_cnt;
  ha->gbl_dsd_avail += ctx1->dsd_use_cnt;
  mempool_free(ctx1, ha->ctx_mempool);
 }
}
