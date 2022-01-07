
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int queue_count; scalar_t__ sqsize; } ;


 int nvme_tcp_alloc_queue (struct nvme_ctrl*,int,scalar_t__) ;
 int nvme_tcp_free_queue (struct nvme_ctrl*,int) ;

__attribute__((used)) static int __nvme_tcp_alloc_io_queues(struct nvme_ctrl *ctrl)
{
 int i, ret;

 for (i = 1; i < ctrl->queue_count; i++) {
  ret = nvme_tcp_alloc_queue(ctrl, i,
    ctrl->sqsize + 1);
  if (ret)
   goto out_free_queues;
 }

 return 0;

out_free_queues:
 for (i--; i >= 1; i--)
  nvme_tcp_free_queue(ctrl, i);

 return ret;
}
