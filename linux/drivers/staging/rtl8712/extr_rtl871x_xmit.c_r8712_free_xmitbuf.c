
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; int queue; } ;
struct xmit_priv {int free_xmitbuf_cnt; struct __queue free_xmitbuf_queue; } ;
struct xmit_buf {int list; } ;


 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
 unsigned long irqL;
 struct __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;

 if (pxmitbuf == ((void*)0))
  return;
 spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 list_del_init(&pxmitbuf->list);
 list_add_tail(&(pxmitbuf->list), &pfree_xmitbuf_queue->queue);
 pxmitpriv->free_xmitbuf_cnt++;
 spin_unlock_irqrestore(&pfree_xmitbuf_queue->lock, irqL);
}
