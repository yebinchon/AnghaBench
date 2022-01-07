
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; int * pkt; struct _adapter* adapter; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
struct __queue {int lock; int queue; } ;
struct recv_priv {int free_recvframe_cnt; struct __queue free_recv_queue; } ;
struct _adapter {struct recv_priv recvpriv; } ;


 int dev_kfree_skb_any (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_free_recvframe(union recv_frame *precvframe,
     struct __queue *pfree_recv_queue)
{
 unsigned long irqL;
 struct _adapter *padapter = precvframe->u.hdr.adapter;
 struct recv_priv *precvpriv = &padapter->recvpriv;

 if (precvframe->u.hdr.pkt) {
  dev_kfree_skb_any(precvframe->u.hdr.pkt);
  precvframe->u.hdr.pkt = ((void*)0);
 }
 spin_lock_irqsave(&pfree_recv_queue->lock, irqL);
 list_del_init(&(precvframe->u.hdr.list));
 list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
 if (padapter) {
  if (pfree_recv_queue == &precvpriv->free_recv_queue)
   precvpriv->free_recvframe_cnt++;
 }
 spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
}
