
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue_count; scalar_t__ state; int admin_q; } ;
struct nvme_loop_ctrl {int admin_tag_set; TYPE_1__ ctrl; int tag_set; } ;


 scalar_t__ NVME_CTRL_LIVE ;
 int blk_mq_quiesce_queue (int ) ;
 int blk_mq_tagset_busy_iter (int *,int ,TYPE_1__*) ;
 int blk_mq_tagset_wait_completed_request (int *) ;
 int nvme_cancel_request ;
 int nvme_loop_destroy_admin_queue (struct nvme_loop_ctrl*) ;
 int nvme_loop_destroy_io_queues (struct nvme_loop_ctrl*) ;
 int nvme_shutdown_ctrl (TYPE_1__*) ;
 int nvme_stop_queues (TYPE_1__*) ;

__attribute__((used)) static void nvme_loop_shutdown_ctrl(struct nvme_loop_ctrl *ctrl)
{
 if (ctrl->ctrl.queue_count > 1) {
  nvme_stop_queues(&ctrl->ctrl);
  blk_mq_tagset_busy_iter(&ctrl->tag_set,
     nvme_cancel_request, &ctrl->ctrl);
  blk_mq_tagset_wait_completed_request(&ctrl->tag_set);
  nvme_loop_destroy_io_queues(ctrl);
 }

 blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 if (ctrl->ctrl.state == NVME_CTRL_LIVE)
  nvme_shutdown_ctrl(&ctrl->ctrl);

 blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
    nvme_cancel_request, &ctrl->ctrl);
 blk_mq_tagset_wait_completed_request(&ctrl->admin_tag_set);
 nvme_loop_destroy_admin_queue(ctrl);
}
