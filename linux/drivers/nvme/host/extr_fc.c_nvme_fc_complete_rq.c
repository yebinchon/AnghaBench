
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_fc_fcp_op {int state; struct nvme_fc_ctrl* ctrl; } ;
struct nvme_fc_ctrl {int dummy; } ;


 int FCPOP_STATE_IDLE ;
 int atomic_set (int *,int ) ;
 struct nvme_fc_fcp_op* blk_mq_rq_to_pdu (struct request*) ;
 int nvme_complete_rq (struct request*) ;
 int nvme_fc_ctrl_put (struct nvme_fc_ctrl*) ;
 int nvme_fc_unmap_data (struct nvme_fc_ctrl*,struct request*,struct nvme_fc_fcp_op*) ;

__attribute__((used)) static void
nvme_fc_complete_rq(struct request *rq)
{
 struct nvme_fc_fcp_op *op = blk_mq_rq_to_pdu(rq);
 struct nvme_fc_ctrl *ctrl = op->ctrl;

 atomic_set(&op->state, FCPOP_STATE_IDLE);

 nvme_fc_unmap_data(ctrl, rq, op);
 nvme_complete_rq(rq);
 nvme_fc_ctrl_put(ctrl);
}
