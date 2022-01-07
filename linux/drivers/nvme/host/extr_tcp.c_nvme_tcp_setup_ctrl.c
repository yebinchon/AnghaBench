
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmf_ctrl_options {scalar_t__ queue_size; } ;
struct nvme_ctrl {scalar_t__ sqsize; scalar_t__ maxcmd; int queue_count; scalar_t__ state; int device; scalar_t__ icdoff; struct nvmf_ctrl_options* opts; } ;


 int EINVAL ;
 scalar_t__ NVME_CTRL_DELETING ;
 int NVME_CTRL_LIVE ;
 int WARN_ON_ONCE (int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 int nvme_change_ctrl_state (struct nvme_ctrl*,int ) ;
 int nvme_start_ctrl (struct nvme_ctrl*) ;
 int nvme_tcp_configure_admin_queue (struct nvme_ctrl*,int) ;
 int nvme_tcp_configure_io_queues (struct nvme_ctrl*,int) ;
 int nvme_tcp_destroy_admin_queue (struct nvme_ctrl*,int) ;
 int nvme_tcp_destroy_io_queues (struct nvme_ctrl*,int) ;
 int nvme_tcp_stop_queue (struct nvme_ctrl*,int ) ;

__attribute__((used)) static int nvme_tcp_setup_ctrl(struct nvme_ctrl *ctrl, bool new)
{
 struct nvmf_ctrl_options *opts = ctrl->opts;
 int ret;

 ret = nvme_tcp_configure_admin_queue(ctrl, new);
 if (ret)
  return ret;

 if (ctrl->icdoff) {
  dev_err(ctrl->device, "icdoff is not supported!\n");
  goto destroy_admin;
 }

 if (opts->queue_size > ctrl->sqsize + 1)
  dev_warn(ctrl->device,
   "queue_size %zu > ctrl sqsize %u, clamping down\n",
   opts->queue_size, ctrl->sqsize + 1);

 if (ctrl->sqsize + 1 > ctrl->maxcmd) {
  dev_warn(ctrl->device,
   "sqsize %u > ctrl maxcmd %u, clamping down\n",
   ctrl->sqsize + 1, ctrl->maxcmd);
  ctrl->sqsize = ctrl->maxcmd - 1;
 }

 if (ctrl->queue_count > 1) {
  ret = nvme_tcp_configure_io_queues(ctrl, new);
  if (ret)
   goto destroy_admin;
 }

 if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE)) {

  WARN_ON_ONCE(ctrl->state != NVME_CTRL_DELETING);
  ret = -EINVAL;
  goto destroy_io;
 }

 nvme_start_ctrl(ctrl);
 return 0;

destroy_io:
 if (ctrl->queue_count > 1)
  nvme_tcp_destroy_io_queues(ctrl, new);
destroy_admin:
 nvme_tcp_stop_queue(ctrl, 0);
 nvme_tcp_destroy_admin_queue(ctrl, new);
 return ret;
}
