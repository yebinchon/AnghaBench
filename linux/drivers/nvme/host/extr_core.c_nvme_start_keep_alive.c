
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_ctrl {int kato; int ka_work; } ;


 int HZ ;
 int schedule_delayed_work (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void nvme_start_keep_alive(struct nvme_ctrl *ctrl)
{
 if (unlikely(ctrl->kato == 0))
  return;

 schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
}
