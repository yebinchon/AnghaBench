
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_fc_fcp_op {struct nvme_fc_ctrl* ctrl; } ;
struct nvme_fc_ctrl {int dummy; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;


 int BLK_EH_RESET_TIMER ;
 struct nvme_fc_fcp_op* blk_mq_rq_to_pdu (struct request*) ;
 int nvme_fc_error_recovery (struct nvme_fc_ctrl*,char*) ;

__attribute__((used)) static enum blk_eh_timer_return
nvme_fc_timeout(struct request *rq, bool reserved)
{
 struct nvme_fc_fcp_op *op = blk_mq_rq_to_pdu(rq);
 struct nvme_fc_ctrl *ctrl = op->ctrl;
 nvme_fc_error_recovery(ctrl, "io timeout error");






 return BLK_EH_RESET_TIMER;
}
