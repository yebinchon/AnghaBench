
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_fc_fcp_op {int flags; } ;
struct nvme_fc_ctrl {struct nvme_fc_fcp_op* aen_ops; } ;


 int FCOP_FLAGS_AEN ;
 int NVME_NR_AEN_COMMANDS ;
 int __nvme_fc_abort_op (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*) ;

__attribute__((used)) static void
nvme_fc_abort_aen_ops(struct nvme_fc_ctrl *ctrl)
{
 struct nvme_fc_fcp_op *aen_op = ctrl->aen_ops;
 int i;


 if (!(aen_op->flags & FCOP_FLAGS_AEN))
  return;

 for (i = 0; i < NVME_NR_AEN_COMMANDS; i++, aen_op++)
  __nvme_fc_abort_op(ctrl, aen_op);
}
