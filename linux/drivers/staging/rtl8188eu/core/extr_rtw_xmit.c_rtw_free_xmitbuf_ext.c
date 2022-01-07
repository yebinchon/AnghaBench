
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; } ;
struct xmit_priv {int free_xmit_extbuf_cnt; struct __queue free_xmit_extbuf_queue; } ;
struct xmit_buf {int list; } ;
typedef int s32 ;


 int _FAIL ;
 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
 unsigned long irql;
 struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;

 if (!pxmitbuf)
  return _FAIL;

 spin_lock_irqsave(&pfree_queue->lock, irql);

 list_del_init(&pxmitbuf->list);

 list_add_tail(&pxmitbuf->list, get_list_head(pfree_queue));
 pxmitpriv->free_xmit_extbuf_cnt++;

 spin_unlock_irqrestore(&pfree_queue->lock, irql);

 return _SUCCESS;
}
