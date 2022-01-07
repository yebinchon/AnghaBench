
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int queue_count; scalar_t__ kato; } ;


 int nvme_enable_aen (struct nvme_ctrl*) ;
 int nvme_queue_scan (struct nvme_ctrl*) ;
 int nvme_start_keep_alive (struct nvme_ctrl*) ;
 int nvme_start_queues (struct nvme_ctrl*) ;

void nvme_start_ctrl(struct nvme_ctrl *ctrl)
{
 if (ctrl->kato)
  nvme_start_keep_alive(ctrl);

 nvme_enable_aen(ctrl);

 if (ctrl->queue_count > 1) {
  nvme_queue_scan(ctrl);
  nvme_start_queues(ctrl);
 }
}
