
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int admin_q; scalar_t__ admin_tagset; } ;


 int blk_mq_quiesce_queue (int ) ;
 int blk_mq_tagset_busy_iter (scalar_t__,int ,struct nvme_ctrl*) ;
 int blk_mq_tagset_wait_completed_request (scalar_t__) ;
 int blk_mq_unquiesce_queue (int ) ;
 int nvme_cancel_request ;
 int nvme_tcp_destroy_admin_queue (struct nvme_ctrl*,int) ;
 int nvme_tcp_stop_queue (struct nvme_ctrl*,int ) ;

__attribute__((used)) static void nvme_tcp_teardown_admin_queue(struct nvme_ctrl *ctrl,
  bool remove)
{
 blk_mq_quiesce_queue(ctrl->admin_q);
 nvme_tcp_stop_queue(ctrl, 0);
 if (ctrl->admin_tagset) {
  blk_mq_tagset_busy_iter(ctrl->admin_tagset,
   nvme_cancel_request, ctrl);
  blk_mq_tagset_wait_completed_request(ctrl->admin_tagset);
 }
 if (remove)
  blk_mq_unquiesce_queue(ctrl->admin_q);
 nvme_tcp_destroy_admin_queue(ctrl, remove);
}
