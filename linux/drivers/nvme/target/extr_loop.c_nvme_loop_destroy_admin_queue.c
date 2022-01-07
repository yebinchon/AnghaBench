
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int fabrics_q; int admin_q; } ;
struct nvme_loop_ctrl {int admin_tag_set; TYPE_2__ ctrl; TYPE_1__* queues; } ;
struct TYPE_3__ {int nvme_sq; int flags; } ;


 int NVME_LOOP_Q_LIVE ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int clear_bit (int ,int *) ;
 int nvmet_sq_destroy (int *) ;

__attribute__((used)) static void nvme_loop_destroy_admin_queue(struct nvme_loop_ctrl *ctrl)
{
 clear_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
 nvmet_sq_destroy(&ctrl->queues[0].nvme_sq);
 blk_cleanup_queue(ctrl->ctrl.admin_q);
 blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 blk_mq_free_tag_set(&ctrl->admin_tag_set);
}
