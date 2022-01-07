
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; int queue; } ;
struct xmit_priv {int free_xmitframe_cnt; struct _adapter* adapter; struct __queue free_xmit_queue; } ;
struct xmit_frame {int list; int * pkt; } ;
struct _adapter {int pnetdev; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
     struct xmit_frame *pxmitframe)
{
 unsigned long irqL;
 struct __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
 struct _adapter *padapter = pxmitpriv->adapter;

 if (pxmitframe == ((void*)0))
  return;
 spin_lock_irqsave(&pfree_xmit_queue->lock, irqL);
 list_del_init(&pxmitframe->list);
 if (pxmitframe->pkt)
  pxmitframe->pkt = ((void*)0);
 list_add_tail(&pxmitframe->list, &pfree_xmit_queue->queue);
 pxmitpriv->free_xmitframe_cnt++;
 spin_unlock_irqrestore(&pfree_xmit_queue->lock, irqL);
 if (netif_queue_stopped(padapter->pnetdev))
  netif_wake_queue(padapter->pnetdev);
}
