
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int tagset; int connect_q; } ;


 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int nvme_tcp_free_io_queues (struct nvme_ctrl*) ;
 int nvme_tcp_stop_io_queues (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_destroy_io_queues(struct nvme_ctrl *ctrl, bool remove)
{
 nvme_tcp_stop_io_queues(ctrl);
 if (remove) {
  blk_cleanup_queue(ctrl->connect_q);
  blk_mq_free_tag_set(ctrl->tagset);
 }
 nvme_tcp_free_io_queues(ctrl);
}
