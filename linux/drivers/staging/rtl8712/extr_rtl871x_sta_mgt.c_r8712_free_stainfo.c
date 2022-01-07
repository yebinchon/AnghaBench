
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int lock; } ;
struct TYPE_14__ {int lock; } ;
struct TYPE_12__ {int lock; } ;
struct TYPE_10__ {int lock; } ;
struct xmit_priv {TYPE_8__ be_pending; TYPE_6__ bk_pending; TYPE_4__ vi_pending; TYPE_2__ vo_pending; } ;
struct TYPE_15__ {int tx_pending; int sta_pending; } ;
struct TYPE_13__ {int tx_pending; int sta_pending; } ;
struct TYPE_11__ {int tx_pending; int sta_pending; } ;
struct TYPE_9__ {int tx_pending; int sta_pending; } ;
struct sta_xmit_priv {TYPE_7__ be_q; TYPE_5__ bk_q; TYPE_3__ vi_q; TYPE_1__ vo_q; } ;
struct __queue {int lock; int queue; } ;
struct sta_priv {int asoc_sta_count; struct __queue free_sta_queue; } ;
struct sta_info {int list; struct recv_reorder_ctrl* recvreorder_ctrl; int sta_recvpriv; struct sta_xmit_priv sta_xmitpriv; int hash_list; } ;
struct recv_reorder_ctrl {int reordering_ctrl_timer; } ;
struct _adapter {struct sta_priv stapriv; struct xmit_priv xmitpriv; } ;


 int _r8712_init_sta_recv_priv (int *) ;
 int _r8712_init_sta_xmit_priv (struct sta_xmit_priv*) ;
 int del_timer (int *) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int r8712_free_xmitframe_queue (struct xmit_priv*,int *) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r8712_free_stainfo(struct _adapter *padapter, struct sta_info *psta)
{
 int i;
 unsigned long irqL0;
 struct __queue *pfree_sta_queue;
 struct recv_reorder_ctrl *preorder_ctrl;
 struct sta_xmit_priv *pstaxmitpriv;
 struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 struct sta_priv *pstapriv = &padapter->stapriv;

 if (psta == ((void*)0))
  return;
 pfree_sta_queue = &pstapriv->free_sta_queue;
 pstaxmitpriv = &psta->sta_xmitpriv;
 spin_lock_irqsave(&(pxmitpriv->vo_pending.lock), irqL0);
 r8712_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->vo_q.sta_pending);
 list_del_init(&(pstaxmitpriv->vo_q.tx_pending));
 spin_unlock_irqrestore(&(pxmitpriv->vo_pending.lock), irqL0);
 spin_lock_irqsave(&(pxmitpriv->vi_pending.lock), irqL0);
 r8712_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->vi_q.sta_pending);
 list_del_init(&(pstaxmitpriv->vi_q.tx_pending));
 spin_unlock_irqrestore(&(pxmitpriv->vi_pending.lock), irqL0);
 spin_lock_irqsave(&(pxmitpriv->bk_pending.lock), irqL0);
 r8712_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->bk_q.sta_pending);
 list_del_init(&(pstaxmitpriv->bk_q.tx_pending));
 spin_unlock_irqrestore(&(pxmitpriv->bk_pending.lock), irqL0);
 spin_lock_irqsave(&(pxmitpriv->be_pending.lock), irqL0);
 r8712_free_xmitframe_queue(pxmitpriv, &pstaxmitpriv->be_q.sta_pending);
 list_del_init(&(pstaxmitpriv->be_q.tx_pending));
 spin_unlock_irqrestore(&(pxmitpriv->be_pending.lock), irqL0);
 list_del_init(&psta->hash_list);
 pstapriv->asoc_sta_count--;

 _r8712_init_sta_xmit_priv(&psta->sta_xmitpriv);
 _r8712_init_sta_recv_priv(&psta->sta_recvpriv);



 for (i = 0; i < 16; i++) {
  preorder_ctrl = &psta->recvreorder_ctrl[i];
  del_timer(&preorder_ctrl->reordering_ctrl_timer);
 }
 spin_lock(&(pfree_sta_queue->lock));

 list_add_tail(&psta->list, &pfree_sta_queue->queue);
 spin_unlock(&(pfree_sta_queue->lock));
}
