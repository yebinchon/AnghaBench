
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs_request {int dummy; } ;
struct tcs_group {int lock; } ;
struct rsc_drv {int dummy; } ;


 scalar_t__ IS_ERR (struct tcs_group*) ;
 int PTR_ERR (struct tcs_group*) ;
 int __tcs_buffer_write (struct rsc_drv*,int,int,struct tcs_request const*) ;
 int find_slots (struct tcs_group*,struct tcs_request const*,int*,int*) ;
 struct tcs_group* get_tcs_for_msg (struct rsc_drv*,struct tcs_request const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int tcs_ctrl_write(struct rsc_drv *drv, const struct tcs_request *msg)
{
 struct tcs_group *tcs;
 int tcs_id = 0, cmd_id = 0;
 unsigned long flags;
 int ret;

 tcs = get_tcs_for_msg(drv, msg);
 if (IS_ERR(tcs))
  return PTR_ERR(tcs);

 spin_lock_irqsave(&tcs->lock, flags);

 ret = find_slots(tcs, msg, &tcs_id, &cmd_id);
 if (!ret)
  __tcs_buffer_write(drv, tcs_id, cmd_id, msg);
 spin_unlock_irqrestore(&tcs->lock, flags);

 return ret;
}
