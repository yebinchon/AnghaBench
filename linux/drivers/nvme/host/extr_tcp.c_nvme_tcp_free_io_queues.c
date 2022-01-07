
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int queue_count; } ;


 int nvme_tcp_free_queue (struct nvme_ctrl*,int) ;

__attribute__((used)) static void nvme_tcp_free_io_queues(struct nvme_ctrl *ctrl)
{
 int i;

 for (i = 1; i < ctrl->queue_count; i++)
  nvme_tcp_free_queue(ctrl, i);
}
