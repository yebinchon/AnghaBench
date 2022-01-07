
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct nvme_ctrl {int device; } ;


 int anatt_timer ;
 struct nvme_ctrl* ctrl ;
 int dev_info (int ,char*) ;
 struct nvme_ctrl* from_timer (int ,struct timer_list*,int ) ;
 int nvme_reset_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_anatt_timeout(struct timer_list *t)
{
 struct nvme_ctrl *ctrl = from_timer(ctrl, t, anatt_timer);

 dev_info(ctrl->device, "ANATT timeout, resetting controller.\n");
 nvme_reset_ctrl(ctrl);
}
