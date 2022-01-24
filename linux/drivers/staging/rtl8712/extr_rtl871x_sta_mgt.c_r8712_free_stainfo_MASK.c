#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  lock; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct xmit_priv {TYPE_8__ be_pending; TYPE_6__ bk_pending; TYPE_4__ vi_pending; TYPE_2__ vo_pending; } ;
struct TYPE_15__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_13__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_11__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct TYPE_9__ {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  sta_pending; } ;
struct sta_xmit_priv {TYPE_7__ be_q; TYPE_5__ bk_q; TYPE_3__ vi_q; TYPE_1__ vo_q; } ;
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct sta_priv {int /*<<< orphan*/  asoc_sta_count; struct __queue free_sta_queue; } ;
struct sta_info {int /*<<< orphan*/  list; struct recv_reorder_ctrl* recvreorder_ctrl; int /*<<< orphan*/  sta_recvpriv; struct sta_xmit_priv sta_xmitpriv; int /*<<< orphan*/  hash_list; } ;
struct recv_reorder_ctrl {int /*<<< orphan*/  reordering_ctrl_timer; } ;
struct _adapter {struct sta_priv stapriv; struct xmit_priv xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sta_xmit_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct xmit_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(struct _adapter *padapter, struct sta_info *psta)
{
	int i;
	unsigned long irqL0;
	struct  __queue *pfree_sta_queue;
	struct recv_reorder_ctrl *preorder_ctrl;
	struct	sta_xmit_priv *pstaxmitpriv;
	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
	struct	sta_priv *pstapriv = &padapter->stapriv;

	if (psta == NULL)
		return;
	pfree_sta_queue = &pstapriv->free_sta_queue;
	pstaxmitpriv = &psta->sta_xmitpriv;
	FUNC7(&(pxmitpriv->vo_pending.lock), irqL0);
	FUNC5(pxmitpriv, &pstaxmitpriv->vo_q.sta_pending);
	FUNC4(&(pstaxmitpriv->vo_q.tx_pending));
	FUNC9(&(pxmitpriv->vo_pending.lock), irqL0);
	FUNC7(&(pxmitpriv->vi_pending.lock), irqL0);
	FUNC5(pxmitpriv, &pstaxmitpriv->vi_q.sta_pending);
	FUNC4(&(pstaxmitpriv->vi_q.tx_pending));
	FUNC9(&(pxmitpriv->vi_pending.lock), irqL0);
	FUNC7(&(pxmitpriv->bk_pending.lock), irqL0);
	FUNC5(pxmitpriv, &pstaxmitpriv->bk_q.sta_pending);
	FUNC4(&(pstaxmitpriv->bk_q.tx_pending));
	FUNC9(&(pxmitpriv->bk_pending.lock), irqL0);
	FUNC7(&(pxmitpriv->be_pending.lock), irqL0);
	FUNC5(pxmitpriv, &pstaxmitpriv->be_q.sta_pending);
	FUNC4(&(pstaxmitpriv->be_q.tx_pending));
	FUNC9(&(pxmitpriv->be_pending.lock), irqL0);
	FUNC4(&psta->hash_list);
	pstapriv->asoc_sta_count--;
	/* re-init sta_info; 20061114 */
	FUNC1(&psta->sta_xmitpriv);
	FUNC0(&psta->sta_recvpriv);
	/* for A-MPDU Rx reordering buffer control,
	 * cancel reordering_ctrl_timer
	 */
	for (i = 0; i < 16; i++) {
		preorder_ctrl = &psta->recvreorder_ctrl[i];
		FUNC2(&preorder_ctrl->reordering_ctrl_timer);
	}
	FUNC6(&(pfree_sta_queue->lock));
	/* insert into free_sta_queue; 20061114 */
	FUNC3(&psta->list, &pfree_sta_queue->queue);
	FUNC8(&(pfree_sta_queue->lock));
}