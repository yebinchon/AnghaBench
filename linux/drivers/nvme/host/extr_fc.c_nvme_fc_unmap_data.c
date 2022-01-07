
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request {int dummy; } ;
struct TYPE_4__ {int sgl; } ;
struct nvmefc_fcp_req {scalar_t__ sg_cnt; TYPE_2__ sg_table; } ;
struct nvme_fc_fcp_op {int nents; struct nvmefc_fcp_req fcp_req; } ;
struct nvme_fc_ctrl {TYPE_1__* lport; } ;
struct TYPE_3__ {int dev; } ;


 int SG_CHUNK_SIZE ;
 int fc_dma_unmap_sg (int ,int ,int ,int ) ;
 int nvme_cleanup_cmd (struct request*) ;
 int rq_dma_dir (struct request*) ;
 int sg_free_table_chained (TYPE_2__*,int ) ;

__attribute__((used)) static void
nvme_fc_unmap_data(struct nvme_fc_ctrl *ctrl, struct request *rq,
  struct nvme_fc_fcp_op *op)
{
 struct nvmefc_fcp_req *freq = &op->fcp_req;

 if (!freq->sg_cnt)
  return;

 fc_dma_unmap_sg(ctrl->lport->dev, freq->sg_table.sgl, op->nents,
   rq_dma_dir(rq));

 nvme_cleanup_cmd(rq);

 sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);

 freq->sg_cnt = 0;
}
