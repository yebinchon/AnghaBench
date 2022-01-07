
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_request {int dummy; } ;
struct tcs_group {int offset; int lock; struct tcs_request const** req; } ;
struct rsc_drv {int lock; int tcs_in_use; } ;


 scalar_t__ IS_ERR (struct tcs_group*) ;
 int PTR_ERR (struct tcs_group*) ;
 int __tcs_buffer_write (struct rsc_drv*,int,int ,struct tcs_request const*) ;
 int __tcs_trigger (struct rsc_drv*,int) ;
 int check_for_req_inflight (struct rsc_drv*,struct tcs_group*,struct tcs_request const*) ;
 int find_free_tcs (struct tcs_group*) ;
 struct tcs_group* get_tcs_for_msg (struct rsc_drv*,struct tcs_request const*) ;
 int set_bit (int,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tcs_write(struct rsc_drv *drv, const struct tcs_request *msg)
{
 struct tcs_group *tcs;
 int tcs_id;
 unsigned long flags;
 int ret;

 tcs = get_tcs_for_msg(drv, msg);
 if (IS_ERR(tcs))
  return PTR_ERR(tcs);

 spin_lock_irqsave(&tcs->lock, flags);
 spin_lock(&drv->lock);




 ret = check_for_req_inflight(drv, tcs, msg);
 if (ret) {
  spin_unlock(&drv->lock);
  goto done_write;
 }

 tcs_id = find_free_tcs(tcs);
 if (tcs_id < 0) {
  ret = tcs_id;
  spin_unlock(&drv->lock);
  goto done_write;
 }

 tcs->req[tcs_id - tcs->offset] = msg;
 set_bit(tcs_id, drv->tcs_in_use);
 spin_unlock(&drv->lock);

 __tcs_buffer_write(drv, tcs_id, 0, msg);
 __tcs_trigger(drv, tcs_id);

done_write:
 spin_unlock_irqrestore(&tcs->lock, flags);
 return ret;
}
