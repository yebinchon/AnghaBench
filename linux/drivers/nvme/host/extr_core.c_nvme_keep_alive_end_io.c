
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct nvme_ctrl* end_io_data; } ;
struct nvme_ctrl {int comp_seen; scalar_t__ state; int kato; int ka_work; int lock; int device; } ;
typedef int blk_status_t ;


 int HZ ;
 scalar_t__ NVME_CTRL_CONNECTING ;
 scalar_t__ NVME_CTRL_LIVE ;
 int blk_mq_free_request (struct request*) ;
 int dev_err (int ,char*,int ) ;
 int schedule_delayed_work (int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvme_keep_alive_end_io(struct request *rq, blk_status_t status)
{
 struct nvme_ctrl *ctrl = rq->end_io_data;
 unsigned long flags;
 bool startka = 0;

 blk_mq_free_request(rq);

 if (status) {
  dev_err(ctrl->device,
   "failed nvme_keep_alive_end_io error=%d\n",
    status);
  return;
 }

 ctrl->comp_seen = 0;
 spin_lock_irqsave(&ctrl->lock, flags);
 if (ctrl->state == NVME_CTRL_LIVE ||
     ctrl->state == NVME_CTRL_CONNECTING)
  startka = 1;
 spin_unlock_irqrestore(&ctrl->lock, flags);
 if (startka)
  schedule_delayed_work(&ctrl->ka_work, ctrl->kato * HZ);
}
