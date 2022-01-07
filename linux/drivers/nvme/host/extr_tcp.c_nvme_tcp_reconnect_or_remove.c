
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvme_ctrl {scalar_t__ state; int device; TYPE_1__* opts; } ;
struct TYPE_4__ {int connect_work; } ;
struct TYPE_3__ {int reconnect_delay; } ;


 int HZ ;
 scalar_t__ NVME_CTRL_CONNECTING ;
 scalar_t__ NVME_CTRL_LIVE ;
 scalar_t__ NVME_CTRL_NEW ;
 int WARN_ON_ONCE (int) ;
 int dev_info (int ,char*,...) ;
 int nvme_delete_ctrl (struct nvme_ctrl*) ;
 int nvme_wq ;
 scalar_t__ nvmf_should_reconnect (struct nvme_ctrl*) ;
 int queue_delayed_work (int ,int *,int) ;
 TYPE_2__* to_tcp_ctrl (struct nvme_ctrl*) ;

__attribute__((used)) static void nvme_tcp_reconnect_or_remove(struct nvme_ctrl *ctrl)
{

 if (ctrl->state != NVME_CTRL_CONNECTING) {
  WARN_ON_ONCE(ctrl->state == NVME_CTRL_NEW ||
   ctrl->state == NVME_CTRL_LIVE);
  return;
 }

 if (nvmf_should_reconnect(ctrl)) {
  dev_info(ctrl->device, "Reconnecting in %d seconds...\n",
   ctrl->opts->reconnect_delay);
  queue_delayed_work(nvme_wq, &to_tcp_ctrl(ctrl)->connect_work,
    ctrl->opts->reconnect_delay * HZ);
 } else {
  dev_info(ctrl->device, "Removing controller...\n");
  nvme_delete_ctrl(ctrl);
 }
}
