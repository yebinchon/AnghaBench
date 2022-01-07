
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; int queue; } ;
struct xmit_priv {struct __queue pending_xmitbuf_queue; } ;
typedef int sint ;


 int list_empty (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

sint check_pending_xmitbuf(
 struct xmit_priv *pxmitpriv)
{
 struct __queue *pqueue;
 sint ret = 0;

 pqueue = &pxmitpriv->pending_xmitbuf_queue;

 spin_lock_bh(&pqueue->lock);

 if (!list_empty(&pqueue->queue))
  ret = 1;

 spin_unlock_bh(&pqueue->lock);

 return ret;
}
