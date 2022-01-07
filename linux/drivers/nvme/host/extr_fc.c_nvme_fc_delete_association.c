
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int queue_count; int admin_q; scalar_t__ tagset; } ;
struct nvme_fc_ctrl {int assoc_active; scalar_t__ iocnt; TYPE_1__ ctrl; int * queues; scalar_t__ association_id; int lock; int flags; int ioabort_wait; int admin_tag_set; int tag_set; } ;


 int FCCTRL_TERMIO ;
 int __nvme_fc_delete_hw_queue (struct nvme_fc_ctrl*,int *,int ) ;
 int blk_mq_quiesce_queue (int ) ;
 int blk_mq_tagset_busy_iter (int *,int ,TYPE_1__*) ;
 int blk_mq_tagset_wait_completed_request (int *) ;
 int blk_mq_unquiesce_queue (int ) ;
 int nvme_fc_abort_aen_ops (struct nvme_fc_ctrl*) ;
 int nvme_fc_ctlr_inactive_on_rport (struct nvme_fc_ctrl*) ;
 int nvme_fc_delete_hw_io_queues (struct nvme_fc_ctrl*) ;
 int nvme_fc_free_io_queues (struct nvme_fc_ctrl*) ;
 int nvme_fc_free_queue (int *) ;
 int nvme_fc_term_aen_ops (struct nvme_fc_ctrl*) ;
 int nvme_fc_terminate_exchange ;
 int nvme_fc_xmt_disconnect_assoc (struct nvme_fc_ctrl*) ;
 int nvme_start_queues (TYPE_1__*) ;
 int nvme_stop_queues (TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_event_lock_irq (int ,int,int ) ;

__attribute__((used)) static void
nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
{
 unsigned long flags;

 if (!ctrl->assoc_active)
  return;
 ctrl->assoc_active = 0;

 spin_lock_irqsave(&ctrl->lock, flags);
 ctrl->flags |= FCCTRL_TERMIO;
 ctrl->iocnt = 0;
 spin_unlock_irqrestore(&ctrl->lock, flags);
 if (ctrl->ctrl.queue_count > 1) {
  nvme_stop_queues(&ctrl->ctrl);
  blk_mq_tagset_busy_iter(&ctrl->tag_set,
    nvme_fc_terminate_exchange, &ctrl->ctrl);
  blk_mq_tagset_wait_completed_request(&ctrl->tag_set);
 }
 blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
    nvme_fc_terminate_exchange, &ctrl->ctrl);
 blk_mq_tagset_wait_completed_request(&ctrl->admin_tag_set);


 nvme_fc_abort_aen_ops(ctrl);


 spin_lock_irq(&ctrl->lock);
 wait_event_lock_irq(ctrl->ioabort_wait, ctrl->iocnt == 0, ctrl->lock);
 ctrl->flags &= ~FCCTRL_TERMIO;
 spin_unlock_irq(&ctrl->lock);

 nvme_fc_term_aen_ops(ctrl);







 if (ctrl->association_id)
  nvme_fc_xmt_disconnect_assoc(ctrl);

 if (ctrl->ctrl.tagset) {
  nvme_fc_delete_hw_io_queues(ctrl);
  nvme_fc_free_io_queues(ctrl);
 }

 __nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[0], 0);
 nvme_fc_free_queue(&ctrl->queues[0]);


 blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);


 nvme_start_queues(&ctrl->ctrl);

 nvme_fc_ctlr_inactive_on_rport(ctrl);
}
