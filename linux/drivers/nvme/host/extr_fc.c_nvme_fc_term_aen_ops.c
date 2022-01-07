
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * private; } ;
struct nvme_fc_fcp_op {TYPE_1__ fcp_req; } ;
struct nvme_fc_ctrl {struct nvme_fc_fcp_op* aen_ops; } ;


 int NVME_NR_AEN_COMMANDS ;
 int __nvme_fc_exit_request (struct nvme_fc_ctrl*,struct nvme_fc_fcp_op*) ;
 int kfree (int *) ;

__attribute__((used)) static void
nvme_fc_term_aen_ops(struct nvme_fc_ctrl *ctrl)
{
 struct nvme_fc_fcp_op *aen_op;
 int i;

 aen_op = ctrl->aen_ops;
 for (i = 0; i < NVME_NR_AEN_COMMANDS; i++, aen_op++) {
  if (!aen_op->fcp_req.private)
   continue;

  __nvme_fc_exit_request(ctrl, aen_op);

  kfree(aen_op->fcp_req.private);
  aen_op->fcp_req.private = ((void*)0);
 }
}
