
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int queue_count; } ;


 int nvme_tcp_start_queue (struct nvme_ctrl*,int) ;
 int nvme_tcp_stop_queue (struct nvme_ctrl*,int) ;

__attribute__((used)) static int nvme_tcp_start_io_queues(struct nvme_ctrl *ctrl)
{
 int i, ret = 0;

 for (i = 1; i < ctrl->queue_count; i++) {
  ret = nvme_tcp_start_queue(ctrl, i);
  if (ret)
   goto out_stop_queues;
 }

 return 0;

out_stop_queues:
 for (i--; i >= 1; i--)
  nvme_tcp_stop_queue(ctrl, i);
 return ret;
}
