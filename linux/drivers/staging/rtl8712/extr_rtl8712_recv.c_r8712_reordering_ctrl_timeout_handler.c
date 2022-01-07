
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; } ;
struct recv_reorder_ctrl {struct __queue pending_recvframe_queue; struct _adapter* padapter; } ;
struct _adapter {scalar_t__ surprise_removed; scalar_t__ driver_stopped; } ;


 int r8712_recv_indicatepkts_in_order (struct _adapter*,struct recv_reorder_ctrl*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_reordering_ctrl_timeout_handler(void *pcontext)
{
 unsigned long irql;
 struct recv_reorder_ctrl *preorder_ctrl = pcontext;
 struct _adapter *padapter = preorder_ctrl->padapter;
 struct __queue *ppending_recvframe_queue =
     &preorder_ctrl->pending_recvframe_queue;

 if (padapter->driver_stopped || padapter->surprise_removed)
  return;
 spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);
 r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, 1);
 spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
}
