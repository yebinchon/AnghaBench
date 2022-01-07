
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {scalar_t__ state; int scan_work; scalar_t__ tagset; } ;


 scalar_t__ NVME_CTRL_LIVE ;
 int nvme_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void nvme_queue_scan(struct nvme_ctrl *ctrl)
{



 if (ctrl->state == NVME_CTRL_LIVE && ctrl->tagset)
  queue_work(nvme_wq, &ctrl->scan_work);
}
