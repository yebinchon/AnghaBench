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
struct __queue {int /*<<< orphan*/  lock; } ;
struct xmit_priv {int /*<<< orphan*/  free_xmit_extbuf_cnt; struct __queue free_xmit_extbuf_queue; } ;
struct xmit_buf {int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

s32 FUNC5(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
	unsigned long irql;
	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;

	if (!pxmitbuf)
		return _FAIL;

	FUNC3(&pfree_queue->lock, irql);

	FUNC2(&pxmitbuf->list);

	FUNC1(&pxmitbuf->list, FUNC0(pfree_queue));
	pxmitpriv->free_xmit_extbuf_cnt++;

	FUNC4(&pfree_queue->lock, irql);

	return _SUCCESS;
}