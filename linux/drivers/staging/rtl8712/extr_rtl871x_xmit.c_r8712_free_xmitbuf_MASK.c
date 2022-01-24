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
struct xmit_priv {int /*<<< orphan*/  free_xmitbuf_cnt; struct __queue free_xmitbuf_queue; } ;
struct xmit_buf {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
	unsigned long irqL;
	struct  __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;

	if (pxmitbuf == NULL)
		return;
	FUNC2(&pfree_xmitbuf_queue->lock, irqL);
	FUNC1(&pxmitbuf->list);
	FUNC0(&(pxmitbuf->list), &pfree_xmitbuf_queue->queue);
	pxmitpriv->free_xmitbuf_cnt++;
	FUNC3(&pfree_xmitbuf_queue->lock, irqL);
}