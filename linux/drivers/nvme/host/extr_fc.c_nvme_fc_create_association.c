
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct nvmf_ctrl_options {scalar_t__ queue_size; int subsysnqn; } ;
struct TYPE_20__ {int max_hw_sectors; scalar_t__ maxcmd; scalar_t__ sqsize; int queue_count; scalar_t__ nr_reconnects; int device; scalar_t__ icdoff; int admin_q; struct nvmf_ctrl_options* opts; } ;
struct nvme_fc_ctrl {int assoc_active; TYPE_9__* queues; TYPE_6__ ctrl; int ioq_live; TYPE_5__* lport; TYPE_3__* rport; int cnum; } ;
struct TYPE_21__ {int flags; } ;
struct TYPE_15__ {int port_name; } ;
struct TYPE_19__ {TYPE_4__* ops; TYPE_1__ localport; } ;
struct TYPE_18__ {int max_sgl_segments; } ;
struct TYPE_16__ {scalar_t__ port_state; int port_name; } ;
struct TYPE_17__ {TYPE_2__ remoteport; } ;


 int ENODEV ;
 int ENOTUNIQ ;
 scalar_t__ FC_OBJSTATE_ONLINE ;
 int NVME_AQ_DEPTH ;
 int NVME_CTRL_LIVE ;
 int NVME_FC_Q_LIVE ;
 int PAGE_SHIFT ;
 int __nvme_fc_create_hw_queue (struct nvme_fc_ctrl*,TYPE_9__*,int ,int) ;
 int __nvme_fc_delete_hw_queue (struct nvme_fc_ctrl*,TYPE_9__*,int ) ;
 int blk_mq_unquiesce_queue (int ) ;
 int dev_err (int ,char*,scalar_t__) ;
 int dev_info (int ,char*,int ,int ,int ,int ) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 int nvme_change_ctrl_state (TYPE_6__*,int ) ;
 int nvme_enable_ctrl (TYPE_6__*) ;
 int nvme_fc_connect_admin_queue (struct nvme_fc_ctrl*,TYPE_9__*,int,int) ;
 int nvme_fc_create_io_queues (struct nvme_fc_ctrl*) ;
 scalar_t__ nvme_fc_ctlr_active_on_rport (struct nvme_fc_ctrl*) ;
 int nvme_fc_ctlr_inactive_on_rport (struct nvme_fc_ctrl*) ;
 int nvme_fc_free_queue (TYPE_9__*) ;
 int nvme_fc_init_aen_ops (struct nvme_fc_ctrl*) ;
 int nvme_fc_recreate_io_queues (struct nvme_fc_ctrl*) ;
 int nvme_fc_term_aen_ops (struct nvme_fc_ctrl*) ;
 int nvme_fc_xmt_disconnect_assoc (struct nvme_fc_ctrl*) ;
 int nvme_init_identify (TYPE_6__*) ;
 int nvme_start_ctrl (TYPE_6__*) ;
 int nvmf_connect_admin_queue (TYPE_6__*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int
nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
{
 struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 int ret;
 bool changed;

 ++ctrl->ctrl.nr_reconnects;

 if (ctrl->rport->remoteport.port_state != FC_OBJSTATE_ONLINE)
  return -ENODEV;

 if (nvme_fc_ctlr_active_on_rport(ctrl))
  return -ENOTUNIQ;

 dev_info(ctrl->ctrl.device,
  "NVME-FC{%d}: create association : host wwpn 0x%016llx "
  " rport wwpn 0x%016llx: NQN \"%s\"\n",
  ctrl->cnum, ctrl->lport->localport.port_name,
  ctrl->rport->remoteport.port_name, ctrl->ctrl.opts->subsysnqn);





 ret = __nvme_fc_create_hw_queue(ctrl, &ctrl->queues[0], 0,
    NVME_AQ_DEPTH);
 if (ret)
  goto out_free_queue;

 ret = nvme_fc_connect_admin_queue(ctrl, &ctrl->queues[0],
    NVME_AQ_DEPTH, (NVME_AQ_DEPTH / 4));
 if (ret)
  goto out_delete_hw_queue;

 ret = nvmf_connect_admin_queue(&ctrl->ctrl);
 if (ret)
  goto out_disconnect_admin_queue;

 set_bit(NVME_FC_Q_LIVE, &ctrl->queues[0].flags);
 ret = nvme_enable_ctrl(&ctrl->ctrl);
 if (ret)
  goto out_disconnect_admin_queue;

 ctrl->ctrl.max_hw_sectors =
  (ctrl->lport->ops->max_sgl_segments - 1) << (PAGE_SHIFT - 9);

 blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);

 ret = nvme_init_identify(&ctrl->ctrl);
 if (ret)
  goto out_disconnect_admin_queue;




 if (ctrl->ctrl.icdoff) {
  dev_err(ctrl->ctrl.device, "icdoff %d is not supported!\n",
    ctrl->ctrl.icdoff);
  goto out_disconnect_admin_queue;
 }



 if (opts->queue_size > ctrl->ctrl.maxcmd) {

  dev_warn(ctrl->ctrl.device,
   "queue_size %zu > ctrl maxcmd %u, reducing "
   "to queue_size\n",
   opts->queue_size, ctrl->ctrl.maxcmd);
  opts->queue_size = ctrl->ctrl.maxcmd;
 }

 if (opts->queue_size > ctrl->ctrl.sqsize + 1) {

  dev_warn(ctrl->ctrl.device,
   "queue_size %zu > ctrl sqsize %u, clamping down\n",
   opts->queue_size, ctrl->ctrl.sqsize + 1);
  opts->queue_size = ctrl->ctrl.sqsize + 1;
 }

 ret = nvme_fc_init_aen_ops(ctrl);
 if (ret)
  goto out_term_aen_ops;





 if (ctrl->ctrl.queue_count > 1) {
  if (!ctrl->ioq_live)
   ret = nvme_fc_create_io_queues(ctrl);
  else
   ret = nvme_fc_recreate_io_queues(ctrl);
  if (ret)
   goto out_term_aen_ops;
 }

 changed = nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_LIVE);

 ctrl->ctrl.nr_reconnects = 0;

 if (changed)
  nvme_start_ctrl(&ctrl->ctrl);

 return 0;

out_term_aen_ops:
 nvme_fc_term_aen_ops(ctrl);
out_disconnect_admin_queue:

 nvme_fc_xmt_disconnect_assoc(ctrl);
out_delete_hw_queue:
 __nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[0], 0);
out_free_queue:
 nvme_fc_free_queue(&ctrl->queues[0]);
 ctrl->assoc_active = 0;
 nvme_fc_ctlr_inactive_on_rport(ctrl);

 return ret;
}
