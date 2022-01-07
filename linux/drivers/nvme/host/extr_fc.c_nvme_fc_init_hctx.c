
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_ctrl {int dummy; } ;
struct blk_mq_hw_ctx {int dummy; } ;


 int __nvme_fc_init_hctx (struct blk_mq_hw_ctx*,struct nvme_fc_ctrl*,unsigned int) ;

__attribute__((used)) static int
nvme_fc_init_hctx(struct blk_mq_hw_ctx *hctx, void *data,
  unsigned int hctx_idx)
{
 struct nvme_fc_ctrl *ctrl = data;

 __nvme_fc_init_hctx(hctx, ctrl, hctx_idx + 1);

 return 0;
}
