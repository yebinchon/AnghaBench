
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct request {TYPE_1__* q; } ;
struct nvme_ns {TYPE_2__* head; TYPE_3__* ctrl; int flags; } ;
struct TYPE_8__ {int status; } ;
struct TYPE_7__ {int ana_work; int ana_log_buf; } ;
struct TYPE_6__ {int requeue_work; int requeue_lock; int requeue_list; } ;
struct TYPE_5__ {struct nvme_ns* queuedata; } ;


 int NVME_NS_ANA_PENDING ;




 int blk_mq_end_request (struct request*,int ) ;
 int blk_steal_bios (int *,struct request*) ;
 int kblockd_schedule_work (int *) ;
 int nvme_mpath_clear_current_path (struct nvme_ns*) ;
 TYPE_4__* nvme_req (struct request*) ;
 int nvme_reset_ctrl (TYPE_3__*) ;
 int nvme_wq ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void nvme_failover_req(struct request *req)
{
 struct nvme_ns *ns = req->q->queuedata;
 u16 status = nvme_req(req)->status;
 unsigned long flags;

 spin_lock_irqsave(&ns->head->requeue_lock, flags);
 blk_steal_bios(&ns->head->requeue_list, req);
 spin_unlock_irqrestore(&ns->head->requeue_lock, flags);
 blk_mq_end_request(req, 0);

 switch (status & 0x7ff) {
 case 129:
 case 131:
 case 130:
  nvme_mpath_clear_current_path(ns);
  if (ns->ctrl->ana_log_buf) {
   set_bit(NVME_NS_ANA_PENDING, &ns->flags);
   queue_work(nvme_wq, &ns->ctrl->ana_work);
  }
  break;
 case 128:




  nvme_mpath_clear_current_path(ns);
  break;
 default:




  nvme_reset_ctrl(ns->ctrl);
  break;
 }

 kblockd_schedule_work(&ns->head->requeue_work);
}
