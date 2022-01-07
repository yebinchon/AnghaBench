
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct __queue {int lock; } ;
struct xmit_priv {struct __queue pending_xmitbuf_queue; struct adapter* adapter; } ;
struct xmit_buf {int list; } ;
struct TYPE_2__ {int xmit_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;


 int complete (int *) ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void enqueue_pending_xmitbuf(
 struct xmit_priv *pxmitpriv,
 struct xmit_buf *pxmitbuf)
{
 struct __queue *pqueue;
 struct adapter *pri_adapter = pxmitpriv->adapter;

 pqueue = &pxmitpriv->pending_xmitbuf_queue;

 spin_lock_bh(&pqueue->lock);
 list_del_init(&pxmitbuf->list);
 list_add_tail(&pxmitbuf->list, get_list_head(pqueue));
 spin_unlock_bh(&pqueue->lock);

 complete(&(pri_adapter->xmitpriv.xmit_comp));
}
