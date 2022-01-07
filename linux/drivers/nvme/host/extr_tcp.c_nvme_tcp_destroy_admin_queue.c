
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int admin_tagset; int fabrics_q; int admin_q; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int nvme_tcp_free_admin_queue (struct nvme_ctrl*) ;
 int nvme_tcp_stop_queue (struct nvme_ctrl*,int ) ;

__attribute__((used)) static void nvme_tcp_destroy_admin_queue(struct nvme_ctrl *ctrl, bool remove)
{
 nvme_tcp_stop_queue(ctrl, 0);
 if (remove) {
  blk_cleanup_queue(ctrl->admin_q);
  blk_cleanup_queue(ctrl->fabrics_q);
  blk_mq_free_tag_set(ctrl->admin_tagset);
 }
 nvme_tcp_free_admin_queue(ctrl);
}
