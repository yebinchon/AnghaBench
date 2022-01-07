
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sclp_req {int callback_data; int (* callback ) (struct sclp_req*,int ) ;} ;


 unsigned long __sclp_req_queue_find_next_timeout () ;
 struct sclp_req* __sclp_req_queue_remove_expired_req () ;
 int mod_timer (int *,unsigned long) ;
 int sclp_lock ;
 int sclp_queue_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sclp_req*,int ) ;

__attribute__((used)) static void sclp_req_queue_timeout(struct timer_list *unused)
{
 unsigned long flags, expires_next;
 struct sclp_req *req;

 do {
  req = __sclp_req_queue_remove_expired_req();
  if (req && req->callback)
   req->callback(req, req->callback_data);
 } while (req);

 spin_lock_irqsave(&sclp_lock, flags);
 expires_next = __sclp_req_queue_find_next_timeout();
 if (expires_next)
  mod_timer(&sclp_queue_timer, expires_next);
 spin_unlock_irqrestore(&sclp_lock, flags);
}
