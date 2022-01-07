
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rx_pkt_attrib {int qos; int seq_num; int amsdu; } ;
struct TYPE_3__ {struct recv_reorder_ctrl* preorder_ctrl; struct rx_pkt_attrib attrib; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int lock; } ;
struct recv_reorder_ctrl {int reordering_ctrl_timer; struct __queue pending_recvframe_queue; } ;
struct _adapter {int surprise_removed; int driver_stopped; } ;


 int EINVAL ;
 int ENOMEM ;
 int REORDER_WAIT_TIME ;
 int check_indicate_seq (struct recv_reorder_ctrl*,int ) ;
 int del_timer (int *) ;
 int enqueue_reorder_recvframe (struct recv_reorder_ctrl*,union recv_frame*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int r8712_recv_indicatepkt (struct _adapter*,union recv_frame*) ;
 scalar_t__ r8712_recv_indicatepkts_in_order (struct _adapter*,struct recv_reorder_ctrl*,int) ;
 int r8712_wlanhdr_to_ethhdr (union recv_frame*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int recv_indicatepkt_reorder(struct _adapter *padapter,
        union recv_frame *prframe)
{
 unsigned long irql;
 struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
 struct recv_reorder_ctrl *preorder_ctrl = prframe->u.hdr.preorder_ctrl;
 struct __queue *ppending_recvframe_queue =
    &preorder_ctrl->pending_recvframe_queue;

 if (!pattrib->amsdu) {

  r8712_wlanhdr_to_ethhdr(prframe);
  if (pattrib->qos != 1) {
   if (!padapter->driver_stopped &&
       !padapter->surprise_removed) {
    r8712_recv_indicatepkt(padapter, prframe);
    return 0;
   } else {
    return -EINVAL;
   }
  }
 }
 spin_lock_irqsave(&ppending_recvframe_queue->lock, irql);

 if (!check_indicate_seq(preorder_ctrl, pattrib->seq_num))
  goto _err_exit;

 if (!enqueue_reorder_recvframe(preorder_ctrl, prframe))
  goto _err_exit;
 if (r8712_recv_indicatepkts_in_order(padapter, preorder_ctrl, 0)) {
  mod_timer(&preorder_ctrl->reordering_ctrl_timer,
     jiffies + msecs_to_jiffies(REORDER_WAIT_TIME));
  spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
 } else {
  spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
  del_timer(&preorder_ctrl->reordering_ctrl_timer);
 }
 return 0;
_err_exit:
 spin_unlock_irqrestore(&ppending_recvframe_queue->lock, irql);
 return -ENOMEM;
}
