
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request {int q; } ;
struct TYPE_5__ {int sgl; } ;
struct nvmefc_fcp_req {scalar_t__ sg_cnt; TYPE_2__ sg_table; int first_sgl; } ;
struct nvme_fc_fcp_op {int nents; struct nvmefc_fcp_req fcp_req; } ;
struct nvme_fc_ctrl {TYPE_1__* lport; } ;
struct TYPE_4__ {int dev; } ;


 int EFAULT ;
 int ENOMEM ;
 int SG_CHUNK_SIZE ;
 int WARN_ON (int) ;
 int blk_rq_map_sg (int ,struct request*,int ) ;
 int blk_rq_nr_phys_segments (struct request*) ;
 scalar_t__ fc_dma_map_sg (int ,int ,int ,int ) ;
 int rq_dma_dir (struct request*) ;
 int sg_alloc_table_chained (TYPE_2__*,int ,int ,int ) ;
 int sg_free_table_chained (TYPE_2__*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
nvme_fc_map_data(struct nvme_fc_ctrl *ctrl, struct request *rq,
  struct nvme_fc_fcp_op *op)
{
 struct nvmefc_fcp_req *freq = &op->fcp_req;
 int ret;

 freq->sg_cnt = 0;

 if (!blk_rq_nr_phys_segments(rq))
  return 0;

 freq->sg_table.sgl = freq->first_sgl;
 ret = sg_alloc_table_chained(&freq->sg_table,
   blk_rq_nr_phys_segments(rq), freq->sg_table.sgl,
   SG_CHUNK_SIZE);
 if (ret)
  return -ENOMEM;

 op->nents = blk_rq_map_sg(rq->q, rq, freq->sg_table.sgl);
 WARN_ON(op->nents > blk_rq_nr_phys_segments(rq));
 freq->sg_cnt = fc_dma_map_sg(ctrl->lport->dev, freq->sg_table.sgl,
    op->nents, rq_dma_dir(rq));
 if (unlikely(freq->sg_cnt <= 0)) {
  sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);
  freq->sg_cnt = 0;
  return -EFAULT;
 }




 return 0;
}
