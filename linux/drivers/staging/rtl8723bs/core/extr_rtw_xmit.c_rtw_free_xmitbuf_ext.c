
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __queue {int lock; } ;
struct xmit_priv {int free_xmit_extbuf_cnt; struct __queue free_xmit_extbuf_queue; } ;
struct xmit_buf {int no; int list; } ;
typedef int s32 ;
typedef int _irqL ;


 int DBG_871X (char*,int ,int ) ;
 int _FAIL ;
 int _SUCCESS ;
 int get_list_head (struct __queue*) ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
 _irqL irqL;
 struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;

 if (!pxmitbuf)
  return _FAIL;

 spin_lock_irqsave(&pfree_queue->lock, irqL);

 list_del_init(&pxmitbuf->list);

 list_add_tail(&(pxmitbuf->list), get_list_head(pfree_queue));
 pxmitpriv->free_xmit_extbuf_cnt++;




 spin_unlock_irqrestore(&pfree_queue->lock, irqL);

 return _SUCCESS;
}
