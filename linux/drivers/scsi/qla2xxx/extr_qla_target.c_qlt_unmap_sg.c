
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_tgt_cmd {TYPE_2__* ctx; scalar_t__ ctx_dsd_alloced; int dma_data_direction; int prot_sg_cnt; int prot_sg; scalar_t__ sg_mapped; int sg_cnt; int sg; struct qla_qpair* qpair; } ;
struct qla_qpair {TYPE_1__* pdev; } ;
struct qla_hw_data {int dl_dma_pool; } ;
struct TYPE_5__ {int crc_ctx_dma; } ;
struct TYPE_4__ {int dev; } ;


 int dma_pool_free (int ,TYPE_2__*,int ) ;
 int dma_unmap_sg (int *,int ,int ,int ) ;
 int qla2x00_clean_dsd_pool (struct qla_hw_data*,TYPE_2__*) ;

__attribute__((used)) static void qlt_unmap_sg(struct scsi_qla_host *vha, struct qla_tgt_cmd *cmd)
{
 struct qla_hw_data *ha;
 struct qla_qpair *qpair;

 if (!cmd->sg_mapped)
  return;

 qpair = cmd->qpair;

 dma_unmap_sg(&qpair->pdev->dev, cmd->sg, cmd->sg_cnt,
     cmd->dma_data_direction);
 cmd->sg_mapped = 0;

 if (cmd->prot_sg_cnt)
  dma_unmap_sg(&qpair->pdev->dev, cmd->prot_sg, cmd->prot_sg_cnt,
   cmd->dma_data_direction);

 if (!cmd->ctx)
  return;
 ha = vha->hw;
 if (cmd->ctx_dsd_alloced)
  qla2x00_clean_dsd_pool(ha, cmd->ctx);

 dma_pool_free(ha->dl_dma_pool, cmd->ctx, cmd->ctx->crc_ctx_dma);
}
