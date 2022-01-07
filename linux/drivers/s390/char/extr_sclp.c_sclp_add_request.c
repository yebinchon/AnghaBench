
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * prev; } ;
struct sclp_req {int queue_timeout; TYPE_4__ list; int sccb; scalar_t__ queue_expires; scalar_t__ start_count; int status; } ;
struct TYPE_6__ {int expires; } ;


 int EIO ;
 int ENODATA ;
 int HZ ;
 int SCLP_REQ_QUEUED ;
 int __sclp_can_add_request (struct sclp_req*) ;
 int __sclp_start_request (struct sclp_req*) ;
 scalar_t__ jiffies ;
 int list_add_tail (TYPE_4__*,int *) ;
 int list_del (TYPE_4__*) ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 int sclp_lock ;
 TYPE_1__ sclp_queue_timer ;
 int sclp_req_queue ;
 scalar_t__ sclp_running_state ;
 scalar_t__ sclp_running_state_idle ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int timer_pending (TYPE_1__*) ;

int
sclp_add_request(struct sclp_req *req)
{
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&sclp_lock, flags);
 if (!__sclp_can_add_request(req)) {
  spin_unlock_irqrestore(&sclp_lock, flags);
  return -EIO;
 }
 req->status = SCLP_REQ_QUEUED;
 req->start_count = 0;
 list_add_tail(&req->list, &sclp_req_queue);
 rc = 0;
 if (req->queue_timeout) {
  req->queue_expires = jiffies + req->queue_timeout * HZ;
  if (!timer_pending(&sclp_queue_timer) ||
      time_after(sclp_queue_timer.expires, req->queue_expires))
   mod_timer(&sclp_queue_timer, req->queue_expires);
 } else
  req->queue_expires = 0;

 if (sclp_running_state == sclp_running_state_idle &&
     req->list.prev == &sclp_req_queue) {
  if (!req->sccb) {
   list_del(&req->list);
   rc = -ENODATA;
   goto out;
  }
  rc = __sclp_start_request(req);
  if (rc)
   list_del(&req->list);
 }
out:
 spin_unlock_irqrestore(&sclp_lock, flags);
 return rc;
}
