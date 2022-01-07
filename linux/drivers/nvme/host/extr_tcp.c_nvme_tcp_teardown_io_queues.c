
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int queue_count; scalar_t__ tagset; } ;


 int blk_mq_tagset_busy_iter (scalar_t__,int ,struct nvme_ctrl*) ;
 int blk_mq_tagset_wait_completed_request (scalar_t__) ;
 int nvme_cancel_request ;
 int nvme_start_queues (struct nvme_ctrl*) ;
 int nvme_stop_queues (struct nvme_ctrl*) ;
 int nvme_tcp_destroy_io_queues (struct nvme_ctrl*,int) ;
 int nvme_tcp_stop_io_queues (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_teardown_io_queues(struct nvme_ctrl *ctrl,
  bool remove)
{
 if (ctrl->queue_count <= 1)
  return;
 nvme_stop_queues(ctrl);
 nvme_tcp_stop_io_queues(ctrl);
 if (ctrl->tagset) {
  blk_mq_tagset_busy_iter(ctrl->tagset,
   nvme_cancel_request, ctrl);
  blk_mq_tagset_wait_completed_request(ctrl->tagset);
 }
 if (remove)
  nvme_start_queues(ctrl);
 nvme_tcp_destroy_io_queues(ctrl, remove);
}
