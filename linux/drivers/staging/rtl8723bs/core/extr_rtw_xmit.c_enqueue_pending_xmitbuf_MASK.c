#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct __queue {int /*<<< orphan*/  lock; } ;
struct xmit_priv {struct __queue pending_xmitbuf_queue; struct adapter* adapter; } ;
struct xmit_buf {int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  xmit_comp; } ;
struct adapter {TYPE_1__ xmitpriv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct __queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(
	struct xmit_priv *pxmitpriv,
	struct xmit_buf *pxmitbuf)
{
	struct __queue *pqueue;
	struct adapter *pri_adapter = pxmitpriv->adapter;

	pqueue = &pxmitpriv->pending_xmitbuf_queue;

	FUNC4(&pqueue->lock);
	FUNC3(&pxmitbuf->list);
	FUNC2(&pxmitbuf->list, FUNC1(pqueue));
	FUNC5(&pqueue->lock);

	FUNC0(&(pri_adapter->xmitpriv.xmit_comp));
}