
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_fc_fcp_op {int dummy; } ;
struct nvme_fc_ctrl {int dummy; } ;
struct nvme_ctrl {int dummy; } ;


 int __nvme_fc_abort_op (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*) ;
 struct nvme_fc_fcp_op* blk_mq_rq_to_pdu (struct request*) ;
 struct nvme_fc_ctrl* to_fc_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static bool
nvme_fc_terminate_exchange(struct request *req, void *data, bool reserved)
{
 struct nvme_ctrl *nctrl = data;
 struct nvme_fc_ctrl *ctrl = to_fc_ctrl(nctrl);
 struct nvme_fc_fcp_op *op = blk_mq_rq_to_pdu(req);

 __nvme_fc_abort_op(ctrl, op);
 return 1;
}
