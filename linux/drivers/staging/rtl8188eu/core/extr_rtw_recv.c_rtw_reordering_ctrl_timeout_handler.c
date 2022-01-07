
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct __queue {int lock; } ;
struct recv_reorder_ctrl {int reordering_ctrl_timer; struct __queue pending_recvframe_queue; struct adapter* padapter; } ;
struct adapter {scalar_t__ bSurpriseRemoved; scalar_t__ bDriverStopped; } ;


 int REORDER_WAIT_TIME ;
 struct recv_reorder_ctrl* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 struct recv_reorder_ctrl* preorder_ctrl ;
 scalar_t__ recv_indicatepkts_in_order (struct adapter*,struct recv_reorder_ctrl*,int) ;
 int reordering_ctrl_timer ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rtw_reordering_ctrl_timeout_handler(struct timer_list *t)
{
 struct recv_reorder_ctrl *preorder_ctrl = from_timer(preorder_ctrl, t,
          reordering_ctrl_timer);
 struct adapter *padapter = preorder_ctrl->padapter;
 struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;

 if (padapter->bDriverStopped || padapter->bSurpriseRemoved)
  return;

 spin_lock_bh(&ppending_recvframe_queue->lock);

 if (recv_indicatepkts_in_order(padapter, preorder_ctrl, 1))
  mod_timer(&preorder_ctrl->reordering_ctrl_timer,
     jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));

 spin_unlock_bh(&ppending_recvframe_queue->lock);
}
