
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; TYPE_1__* opts; int device; } ;
struct nvme_rdma_ctrl {TYPE_2__ ctrl; int reconnect_work; } ;
struct TYPE_4__ {int reconnect_delay; } ;


 int HZ ;
 scalar_t__ NVME_CTRL_CONNECTING ;
 scalar_t__ NVME_CTRL_LIVE ;
 scalar_t__ NVME_CTRL_NEW ;
 int WARN_ON_ONCE (int) ;
 int dev_info (int ,char*,int) ;
 int nvme_delete_ctrl (TYPE_2__*) ;
 int nvme_wq ;
 scalar_t__ nvmf_should_reconnect (TYPE_2__*) ;
 int queue_delayed_work (int ,int *,int) ;

__attribute__((used)) static void nvme_rdma_reconnect_or_remove(struct nvme_rdma_ctrl *ctrl)
{

 if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
  WARN_ON_ONCE(ctrl->ctrl.state == NVME_CTRL_NEW ||
   ctrl->ctrl.state == NVME_CTRL_LIVE);
  return;
 }

 if (nvmf_should_reconnect(&ctrl->ctrl)) {
  dev_info(ctrl->ctrl.device, "Reconnecting in %d seconds...\n",
   ctrl->ctrl.opts->reconnect_delay);
  queue_delayed_work(nvme_wq, &ctrl->reconnect_work,
    ctrl->ctrl.opts->reconnect_delay * HZ);
 } else {
  nvme_delete_ctrl(&ctrl->ctrl);
 }
}
