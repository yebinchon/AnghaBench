
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {scalar_t__ kato; int ka_work; } ;


 int cancel_delayed_work_sync (int *) ;
 scalar_t__ unlikely (int) ;

void nvme_stop_keep_alive(struct nvme_ctrl *ctrl)
{
 if (unlikely(ctrl->kato == 0))
  return;

 cancel_delayed_work_sync(&ctrl->ka_work);
}
