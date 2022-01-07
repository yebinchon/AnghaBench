
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int tagset; int connect_q; scalar_t__ queue_count; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int ) ;
 int blk_mq_init_queue (int ) ;
 int blk_mq_update_nr_hw_queues (int ,scalar_t__) ;
 int nvme_tcp_alloc_io_queues (struct nvme_ctrl*) ;
 int nvme_tcp_alloc_tagset (struct nvme_ctrl*,int) ;
 int nvme_tcp_free_io_queues (struct nvme_ctrl*) ;
 int nvme_tcp_start_io_queues (struct nvme_ctrl*) ;

__attribute__((used)) static int nvme_tcp_configure_io_queues(struct nvme_ctrl *ctrl, bool new)
{
 int ret;

 ret = nvme_tcp_alloc_io_queues(ctrl);
 if (ret)
  return ret;

 if (new) {
  ctrl->tagset = nvme_tcp_alloc_tagset(ctrl, 0);
  if (IS_ERR(ctrl->tagset)) {
   ret = PTR_ERR(ctrl->tagset);
   goto out_free_io_queues;
  }

  ctrl->connect_q = blk_mq_init_queue(ctrl->tagset);
  if (IS_ERR(ctrl->connect_q)) {
   ret = PTR_ERR(ctrl->connect_q);
   goto out_free_tag_set;
  }
 } else {
  blk_mq_update_nr_hw_queues(ctrl->tagset,
   ctrl->queue_count - 1);
 }

 ret = nvme_tcp_start_io_queues(ctrl);
 if (ret)
  goto out_cleanup_connect_q;

 return 0;

out_cleanup_connect_q:
 if (new)
  blk_cleanup_queue(ctrl->connect_q);
out_free_tag_set:
 if (new)
  blk_mq_free_tag_set(ctrl->tagset);
out_free_io_queues:
 nvme_tcp_free_io_queues(ctrl);
 return ret;
}
