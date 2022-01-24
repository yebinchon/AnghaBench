#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct __queue {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct xmit_priv {int /*<<< orphan*/  free_xmitframe_cnt; struct _adapter* adapter; struct __queue free_xmit_queue; } ;
struct xmit_frame {int /*<<< orphan*/  list; int /*<<< orphan*/ * pkt; } ;
struct _adapter {int /*<<< orphan*/  pnetdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct xmit_priv *pxmitpriv,
			  struct xmit_frame *pxmitframe)
{
	unsigned long irqL;
	struct  __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
	struct _adapter *padapter = pxmitpriv->adapter;

	if (pxmitframe == NULL)
		return;
	FUNC4(&pfree_xmit_queue->lock, irqL);
	FUNC1(&pxmitframe->list);
	if (pxmitframe->pkt)
		pxmitframe->pkt = NULL;
	FUNC0(&pxmitframe->list, &pfree_xmit_queue->queue);
	pxmitpriv->free_xmitframe_cnt++;
	FUNC5(&pfree_xmit_queue->lock, irqL);
	if (FUNC2(padapter->pnetdev))
		FUNC3(padapter->pnetdev);
}