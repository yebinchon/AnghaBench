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
struct xmit_buf {int /*<<< orphan*/  no; int /*<<< orphan*/  list; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  _irqL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _FAIL ; 
 int /*<<< orphan*/  _SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

s32 FUNC6(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
{
	_irqL irqL;
	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;

	if (!pxmitbuf)
		return _FAIL;

	FUNC4(&pfree_queue->lock, irqL);

	FUNC3(&pxmitbuf->list);

	FUNC2(&(pxmitbuf->list), FUNC1(pfree_queue));
	pxmitpriv->free_xmit_extbuf_cnt++;
	#ifdef DBG_XMIT_BUF_EXT
	DBG_871X("DBG_XMIT_BUF_EXT FREE no =%d, free_xmit_extbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmit_extbuf_cnt);
	#endif

	FUNC5(&pfree_queue->lock, irqL);

	return _SUCCESS;
}