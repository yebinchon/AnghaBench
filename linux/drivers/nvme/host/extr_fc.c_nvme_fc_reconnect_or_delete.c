
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvme_fc_remote_port {scalar_t__ port_state; int dev_loss_tmo; } ;
struct nvme_fc_rport {unsigned long dev_loss_end; struct nvme_fc_remote_port remoteport; } ;
struct TYPE_5__ {scalar_t__ state; int device; int nr_reconnects; TYPE_1__* opts; } ;
struct nvme_fc_ctrl {TYPE_2__ ctrl; int cnum; int connect_work; struct nvme_fc_rport* rport; } ;
struct TYPE_4__ {unsigned long reconnect_delay; } ;


 scalar_t__ FC_OBJSTATE_ONLINE ;
 unsigned long HZ ;
 scalar_t__ NVME_CTRL_CONNECTING ;
 int WARN_ON (int ) ;
 int dev_info (int ,char*,int ,unsigned long) ;
 int dev_warn (int ,char*,int ,int ) ;
 unsigned long jiffies ;
 int nvme_delete_ctrl (TYPE_2__*) ;
 int nvme_wq ;
 scalar_t__ nvmf_should_reconnect (TYPE_2__*) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void
nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
{
 struct nvme_fc_rport *rport = ctrl->rport;
 struct nvme_fc_remote_port *portptr = &rport->remoteport;
 unsigned long recon_delay = ctrl->ctrl.opts->reconnect_delay * HZ;
 bool recon = 1;

 if (ctrl->ctrl.state != NVME_CTRL_CONNECTING)
  return;

 if (portptr->port_state == FC_OBJSTATE_ONLINE)
  dev_info(ctrl->ctrl.device,
   "NVME-FC{%d}: reset: Reconnect attempt failed (%d)\n",
   ctrl->cnum, status);
 else if (time_after_eq(jiffies, rport->dev_loss_end))
  recon = 0;

 if (recon && nvmf_should_reconnect(&ctrl->ctrl)) {
  if (portptr->port_state == FC_OBJSTATE_ONLINE)
   dev_info(ctrl->ctrl.device,
    "NVME-FC{%d}: Reconnect attempt in %ld "
    "seconds\n",
    ctrl->cnum, recon_delay / HZ);
  else if (time_after(jiffies + recon_delay, rport->dev_loss_end))
   recon_delay = rport->dev_loss_end - jiffies;

  queue_delayed_work(nvme_wq, &ctrl->connect_work, recon_delay);
 } else {
  if (portptr->port_state == FC_OBJSTATE_ONLINE)
   dev_warn(ctrl->ctrl.device,
    "NVME-FC{%d}: Max reconnect attempts (%d) "
    "reached.\n",
    ctrl->cnum, ctrl->ctrl.nr_reconnects);
  else
   dev_warn(ctrl->ctrl.device,
    "NVME-FC{%d}: dev_loss_tmo (%d) expired "
    "while waiting for remoteport connectivity.\n",
    ctrl->cnum, portptr->dev_loss_tmo);
  WARN_ON(nvme_delete_ctrl(&ctrl->ctrl));
 }
}
